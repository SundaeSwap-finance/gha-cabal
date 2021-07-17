#!/bin/sh -l

set -eu

# populate cabal cache
if [ ! -d dist-newstyle ]; then
  echo "initializing cabal cache"
  tar -xzf /pkg/dist-newstyle-cache.tar.gz
fi

echo "updating package list ..."
cabal update

echo "cabal $1"
cabal $1

