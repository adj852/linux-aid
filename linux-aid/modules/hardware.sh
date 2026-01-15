#!/usr/bin/env bash



hardware () {
	load_explain hardware
	
	section "Hardware & driver diagnostics"

	info "CPU"
	lscpu | grep -E 'Model name|CPU\(s\)' || true

	echo
	info "Memory"
	free -h

	echo
	info "GPU"
	lspci | grep -Ei 'vga|3d|display' || echo "No GPU detected"

	echo
	info "Loaded drivers"
	lsmod | head -n 10

	echo 
	info "Firmware warnings"
	dmesg | grep -i firmware | head -n 5 || echo "No firmware warnings"

	[[ "$EXPLAIN" == true ]] && explain_hardware
}
