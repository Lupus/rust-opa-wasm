#!/bin/bash

set -e

run_clippy () {
  echo "::group::cargo clippy $@"
  cargo clippy --bins --tests $@ -- -D warnings
  echo "::endgroup::"
}

run_clippy --all-features
run_clippy --no-default-features
sed -e 's/#.*//' -e '/^\s*$/d' -e 's/\s\+/,/g' features.txt | while read -r FEATURES; do
  run_clippy --no-default-features --features "${FEATURES}"
done
