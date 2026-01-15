#!/usr/bin/env bash


logs() {

  load_explain logs

  section "System logs & errors"

  info "Recent kernel errors"
  dmesg --level=err,warn | tail -n 10 || echo "dmesg unavailable"

  echo
  info "Recent system errors"
  journalctl -p err -n 10 --no-pager 2>/dev/null || echo "journalctl unavailable"

 [[ "$EXPLAIN" == true ]] &&  explain_logs
}
