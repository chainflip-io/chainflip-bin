#!/bin/bash

release() {
  local TAG="$1"

  echo "Creating release directory: $TAG"
  mkdir "$TAG"

  echo "Copying files to release directory: $TAG"
  cp chainflip-* "$TAG"

  echo "Creating tarball: $TAG.tar.gz"
  tar -czvf chainflip.tar.gz "$TAG"
}

release "$@"