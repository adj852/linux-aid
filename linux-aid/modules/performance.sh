#!/usr/bin/env bash


performance () {

	load_explain performance

	section "Performance diagnostics"

	info "CPU usage (top processes)"
	ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

	echo
	info "Memory usage"
	free -h

	echo "Swap usage"
	swapon --show || echo "No swap configured"

	echo
	info "Disk IO pressure"
	if [[ -f /proc/pressure/io ]]; then
		cat /proc/pressure/io
	else
		echo "Pressure info not supported"
	fi

	[[ "$EXPLAIN" == true ]] && explain_performance
}
