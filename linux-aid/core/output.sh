#!/usr/bin/env bash

supports_unicode() {
	[[ -t 1 ]] && [[ "${TERM:-}" != "dumb" ]]
}

info()    { supports_unicode && echo "ℹ️  $1" || echo "[INFO] $1"; }
success() { supports_unicode && echo "✔ $1" || echo "[OK] $1"; }
warn()    { supports_unicode && echo "⚠️  $1" || echo "[WARN] $1"; }
error()   { supports_unicode && echo "✖ $1" || echo "[ERROR] $1" >&2; }

section() {
	echo
	echo "== $1 =="
}
