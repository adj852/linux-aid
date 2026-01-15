#!/usr/bin/env bash


packages() {
	load_explain packages
	
	section "Package System"

	pm="$(detect_pkg_manager)"
	info "Detected package manager: $pm"

	case "$pm" in
		apt) info "Try: sudo apt update && sudo apt -f install" ;;
		pacman) info "Try: sudo pacman -Syu"  ;;
		dnf) info "Try: sudo dnf upgrade" ;;
		*) warn "Manual check required" ;;
	esac

	[[ "$EXPLAIN" == true ]] && explain_packages
}
