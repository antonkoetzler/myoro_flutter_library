#!/bin/bash
#
# Script to deploy a new version.

# 1 required argument: patch, minor, or major
if [[ $# -ne 1 ]] || [[ ! "$1" =~ ^(patch|minor|major)$ ]]; then
  echo "Usage: $0 <patch|minor|major>"
  exit 1
fi

# Get version number
version_line=$(grep "^version:" pubspec.yaml)
current_version=$(echo "$version_line" | awk '{print $2}')
IFS='.' read -r major minor patch <<< "$current_version"

option="$1"
case "$option" in
  patch)
    patch=$((patch + 1))
    ;;
  minor)
    minor=$((minor + 1))
    patch=0
    ;;
  major)
    major=$((major + 1))
    minor=0
    patch=0
    ;;
esac

new_version="${major}.${minor}.${patch}"

# Extract lines from STAGELOG.md starting from line 3 (read-only check before any writes)
stagelog=$(tail -n +3 STAGELOG.md)
if [[ -z "$stagelog" ]]; then
  echo "No staging notes to add. Aborting."
  exit 1
fi

# Setup code from scratch; must succeed before we change anything
bash tool/setup.sh

# --- Writes below ---

# Set new version in pubspec.yaml
sed -i.bak "s/^version: .*/version: $new_version/" pubspec.yaml
rm pubspec.yaml.bak

# Insert into CHANGELOG.md two lines after # CHANGELOG
{
  echo "# CHANGELOG"
  echo ""
  echo "## ${new_version}"
  echo ""
  echo "$stagelog"
  echo ""
  tail -n +3 CHANGELOG.md
} > CHANGELOG.tmp && mv CHANGELOG.tmp CHANGELOG.md

# Preserve first two lines of STAGELOG.md
head -n 1 STAGELOG.md > STAGELOG.tmp && mv STAGELOG.tmp STAGELOG.md

echo "Updated version to $new_version"

# Push all code and publish to http://pub.dev
git add .
git commit -m "release(${option}): ${new_version}"
git push
git tag "v${new_version}"
git push origin "v${new_version}"
flutter pub publish
