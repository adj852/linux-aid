#!/usr/bin/env bash

explain_security() {
  explain "
This section checks security-related settings.

It covers:
• Firewall status
• SELinux state
• System clock accuracy

Why this matters:
- Wrong time breaks HTTPS and logins
- Firewall may block services
- SELinux can silently deny access

Tip:
If something works when the firewall is off,
the problem is almost always a rule configuration.
"
}
