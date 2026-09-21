#!/usr/bin/env python3
"""Update Qrow casks from the latest stable and nightly GitHub releases."""

from __future__ import annotations

import hashlib
import json
import os
import re
import sys
import urllib.error
import urllib.request
from pathlib import Path
from typing import Any


REPOSITORY = "vsevolodbazhan/qrow"
API_URL = f"https://api.github.com/repos/{REPOSITORY}/releases?per_page=100"
RELEASE_VERSION = re.compile(r"[0-9A-Za-z][0-9A-Za-z._+-]*")
ROOT = Path(__file__).resolve().parents[1]
CASKS = ROOT / "Casks"


def request_json(url: str) -> Any:
    request = urllib.request.Request(
        url,
        headers={
            "Accept": "application/vnd.github+json",
            "X-GitHub-Api-Version": "2022-11-28",
        },
    )
    token = os.environ.get("GITHUB_TOKEN")
    if token:
        request.add_header("Authorization", f"Bearer {token}")
    try:
        with urllib.request.urlopen(request) as response:
            return json.load(response)
    except urllib.error.HTTPError as error:
        detail = error.read().decode("utf-8", errors="replace")
        raise RuntimeError(f"GitHub API request failed with {error.code}: {detail}") from error


def sha256(url: str) -> str:
    request = urllib.request.Request(url, headers={"User-Agent": "qrow-homebrew-tap"})
    digest = hashlib.sha256()
    try:
        with urllib.request.urlopen(request) as response:
            while chunk := response.read(1024 * 1024):
                digest.update(chunk)
    except urllib.error.HTTPError as error:
        raise RuntimeError(f"Could not download release asset: {url} ({error.code})") from error
    return digest.hexdigest()


def version_for(release: dict[str, Any]) -> str:
    tag = release.get("tag_name", "")
    if not tag.startswith("v"):
        raise RuntimeError(f"Release tag does not start with v: {tag!r}")
    version = tag[1:]
    if RELEASE_VERSION.fullmatch(version) is None:
        raise RuntimeError(f"Release tag contains an invalid cask version: {tag!r}")
    return version


def latest_release(releases: list[dict[str, Any]], *, prerelease: bool) -> dict[str, Any] | None:
    candidates = [
        release
        for release in releases
        if not release.get("draft", False) and release.get("prerelease", False) == prerelease
    ]
    return max(candidates, key=lambda release: release.get("published_at", ""), default=None)


def asset_for(release: dict[str, Any], version: str) -> str:
    expected_name = f"Qrow-{version}.dmg"
    matches = [
        asset
        for asset in release.get("assets", [])
        if asset.get("name") == expected_name
    ]
    if len(matches) != 1:
        raise RuntimeError(
            f"Expected one {expected_name} asset in {release.get('tag_name')}, "
            f"found {len(matches)}"
        )
    return matches[0]["browser_download_url"]


def cask(token: str, version: str, digest: str) -> str:
    return f'''cask "{token}" do
  version "{version}"
  sha256 "{digest}"
  url "https://github.com/{REPOSITORY}/releases/download/v#{{version}}/Qrow-#{{version}}.dmg"

  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/{REPOSITORY}"

  depends_on macos: ">= :big_sur"
  app "Qrow.app"
end
'''


def update_cask(token: str, release: dict[str, Any]) -> bool:
    version = version_for(release)
    asset_url = asset_for(release, version)
    digest = sha256(asset_url)
    path = CASKS / f"{token}.rb"
    content = cask(token, version, digest)
    if path.exists() and path.read_text() == content:
        return False
    path.write_text(content)
    print(f"Updated {path} to {version} ({digest})")
    return True


def main() -> int:
    CASKS.mkdir(parents=True, exist_ok=True)
    releases = request_json(API_URL)
    if not isinstance(releases, list):
        raise RuntimeError("GitHub releases response is not a list")

    changed = False
    stable = latest_release(releases, prerelease=False)
    nightly = latest_release(releases, prerelease=True)
    if stable is not None:
        changed |= update_cask("qrow", stable)
    else:
        print("No stable release found")
    if nightly is not None:
        changed |= update_cask("qrow@nightly", nightly)
    else:
        print("No nightly release found")
    if not changed:
        print("Casks are up to date")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except RuntimeError as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(1)
