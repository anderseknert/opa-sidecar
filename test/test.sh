#!/usr/bin/env bash

set -euo pipefail

mkdir -p tmp
yq write ../opa-sidecar.yaml metadata.name nginx > tmp/opa-sidecar.yaml

kustomize build .

rm -rf tmp

#k() {
#    kubectl --context kind-opa-sidecar-test "$@"
#}

#kind create cluster --name opa-sidecar-test