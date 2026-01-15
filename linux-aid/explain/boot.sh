#!/usr/bin/env bash

explain_boot() {
  explain "
This section checks boot configuration and health.

It looks at:
• Boot mode (UEFI or Legacy)
• /boot or /boot/efi mount status
• Boot-related errors

Common issues:
- EFI partition not mounted
- /boot full (prevents kernel updates)
- Bootloader misconfiguration

If the system boots but updates fail,
check disk space in /boot.
"
}
