#!/usr/bin/env bash



network() {
	load_explain network
	
	section "Network Diagnostics"

	ip link show >/dev/null 2>&1 && ip -brief link || warn "No interface tool"
	ip route >/dev/null 2>&1 && ip route || warn "No routing info"

	

	if getent hosts google.com >/dev/null 2>&1; then
		success "DNS works"
	else
		warn "DNS now working (very common issue)"
		info "Suggestion: check /etc/resolv.conf or Network Settings"
	fi

	

	if ping -c3 8.8.8.8 >/dev/null 2>&1; then
		success "Inernet reachable"

	else 
		warn "No Internet connectivity"
		info "Suggestion: reboot router or restart network service"
	fi


	[[ "$EXPLAIN" == true ]] && explain_network
}
