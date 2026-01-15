#!/usr/bin/env bash


boot() {

	load_explain boot
	
	section "Boot Diagnostics"

	info "Boot mode: $(detect_boot_mode)"

	[[ -d /boot ]] && success "/boot directory exists" || warn "/boot directory missing"

	[[ "$EXPLAIN" == true ]] && explain_boot
}
