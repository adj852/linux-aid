#!/usr/bin/env bash

explain_performance() {
  explain "
This section investigates system slowness.

Things to watch:
- CPU stuck near 100% → runaway process
- High swap usage → not enough RAM
- Disk IO pressure → slow or overloaded disk

Beginner tips:
- Close unused applications
- Reboot if swap usage is high
- SSDs greatly improve responsiveness
"
}
