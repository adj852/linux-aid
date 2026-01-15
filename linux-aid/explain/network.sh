#!/usr/bin/env bash

explain_network() {
  explain "
This section checks networking and internet access.

It verifies:
• Network interfaces
• Default route (gateway)
• DNS resolution
• Internet connectivity

Common problems:
- Ping works, websites don't → DNS issue
- No default route → router or DHCP problem
- No interfaces up → driver or hardware issue

Tip:
If IP addresses work but domains do not,
DNS is almost always the cause.
"
}
