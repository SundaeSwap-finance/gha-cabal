#!/bin/sh -l

set -eu

# populate cabal cache
if [ ! -d dist-newstyle ]; then
  echo "initializing cabal cache"
  tar -xzvf /pkg/dist-newstyle-cache.tar.gz
fi

echo "stack test"
cabal $*
