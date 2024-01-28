#!/bin/bash

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "Failed to create release, version is missing"
  exit 1
fi

echo "Creating release for ${VERSION}..."

MAJOR_VERSION="$(cut -d '.' -f 1 <<< "$VERSION")"

# git tag -fa ${MAJOR_VERSION} -m "Map ${MAJOR_VERSION} to ${VERSION}"
# git push origin ${MAJOR_VERSION} --force

echo "Successfully created release for ${VERSION}"
