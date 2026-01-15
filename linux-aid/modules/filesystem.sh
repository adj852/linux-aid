#!/usr/bin/env bash


filesystem() {

  load_explain filesystem

  section "Filesystem & disk diagnostics"

  info "Disk usage"
  df -hT

  echo
  info "Inode usage"
  df -hi

  echo
  info "Read-only filesystems"
  mount | grep ' ro,' || echo "No read-only mounts detected"

 [[ "$EXPLAIN" == true ]] &&  explain_filesystem
}
