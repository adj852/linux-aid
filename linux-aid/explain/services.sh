#!/usr/bin/env bash

explain_services() {
  explain "
This section checks background system services.

If features like Bluetooth, Wi-Fi,
printing, or login fail, a service may be broken.

What to look for:
- Failed services
- Services failing at boot

Tip:
Restarting a failed service often fixes
temporary problems without rebooting.
"
}
