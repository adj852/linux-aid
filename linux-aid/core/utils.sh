#!/usr/bin/env bash

safe_cmd() {
	command -v "$1" >/dev/null 2>&1

}

EXPLAIN_DIR="$BASE_DIR/explain"

load_explain() {
  [[ "${EXPLAIN:-false}" != true ]] && return

  # Always load shared explain helpers first
  if [[ -f "$EXPLAIN_DIR/common.sh" ]]; then
    source "$EXPLAIN_DIR/common.sh"
  else
    echo "[WARN] Missing explain/common.sh"
    return
  fi

  local file="$1"
  local path="$EXPLAIN_DIR/$file.sh"

  if [[ -f "$path" ]]; then
    source "$path"
  else
    echo "[WARN] Missing explanation file: explain/$file.sh"
  fi
}


