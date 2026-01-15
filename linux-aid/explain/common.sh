#!/usr/bin/env bash

explain() {
  [[ "${EXPLAIN:-false}" != true ]] && return

  echo
  echo "────────────────────────────────"
  echo "EXPLANATION"
  echo "────────────────────────────────"
  echo "$1"
  echo
}
