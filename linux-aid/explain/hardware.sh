#!/usr/bin/env bash

explain_hardware() {
  explain "
This section checks hardware and drivers.

It identifies:
• CPU and memory
• Graphics hardware
• Loaded kernel modules
• Firmware warnings

Common problems:
- Missing firmware → Wi-Fi or GPU issues
- Wrong GPU driver → lag or black screen
- Overheating → throttling

Firmware warnings usually mean
additional driver packages are needed.
"
}
