#!/usr/bin/env bash

explain_packages() {
  explain "
This section checks the package management system.

It detects:
• Which package manager is used
• Broken or interrupted installs
• Package database locks

Common causes:
- Power loss during updates
- Forced shutdowns
- Conflicting repositories

Advice:
Always let updates finish.
Never force-remove core system packages.
"
}
