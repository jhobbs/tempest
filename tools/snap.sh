#!/usr/bin/env bash
set -ue
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR/..
export TEMPEST_VERSION=$(git describe --dirty)
envsubst < snapcraft.yaml.tmpl > snapcraft.yaml
snapcraft snap
