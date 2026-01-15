#!/usr/bin/env bash

explain_filesystem() {
  explain "
This section checks disk and filesystem health.

Common issues:
- Disk full → updates and apps fail
- Inodes full → cannot create files
- Read-only mounts → filesystem damage

If a filesystem becomes read-only:
Back up your data immediately
and run filesystem checks.
"
}
