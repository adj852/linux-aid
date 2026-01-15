#!/usr/bin/env bash


overview() {

	load_explain overview

	section "System Overview"

	info "Distro: $(detect_distro)"
	info "Kernel: $(uname -r)"
	info "Boot mode: $(detect_boot_mode)"
	info "Init system: $(detect_init)"
	info "Package manager: $(detect_pkg_manager)"

	section "Disk Space"
	df -h / | awk 'NR==2 {print "Root usage: "$5}'

	section "Memory"
	free -h | awk '/Mem:/ {print "Used: "$3" / "$2}'

	section "Result"
	success "Basic system checks completed"

	[[ "$EXPLAIN" == true ]] && explain_overview
}
