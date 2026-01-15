#!/usr/bin/env bash

explain_overview() {
  explain "
This section shows general system health.

It checks:
• Kernel version
• System uptime
• Disk usage
• Memory usage

Why this matters:
- Low disk space breaks updates and apps
- Low memory causes freezes
- Very long uptimes often hide pending updates

If something looks wrong here,
fix it before investigating deeper problems.
"
}
