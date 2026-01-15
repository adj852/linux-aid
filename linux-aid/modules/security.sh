#!/usr/bin/env bash


security() {

  load_explain security

  section "Security & access diagnostics"

  info "Firewall status"
  command -v ufw >/dev/null && ufw status || echo "ufw not installed"

  echo
  info "SELinux status"
  command -v getenforce >/dev/null && getenforce || echo "SELinux not installed"

  echo
  info "System time"
  timedatectl status 2>/dev/null | grep -E 'Time zone|System clock'

 [[ "$EXPLAIN" == true ]] &&  explain_security
}
