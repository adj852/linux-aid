#!/usr/bin/env bash

explain_logs() {
  explain "
This section shows recent system errors.

Important patterns:
- Repeating errors → real issue
- Disk or I/O errors → possible hardware failure
- GPU errors → driver problems

If errors appear after every reboot,
they should not be ignored.
"
}
