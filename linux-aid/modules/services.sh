#!/usr/bin/env bash



services() {

  load_explain services

  section "System services diagnostics"

  info "Failed services"
  systemctl --failed --no-pager || echo "systemctl not available"

  echo
  info "Recently failed services"
  systemctl list-units --state=failed --no-pager 2>/dev/null || true

  [[ "$EXPLAIN" == true ]] && explain_services
}
