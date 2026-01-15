#!/usr/bin/env bash

detect_distro () {
	[[ -f /etc/os-relese ]] && . /etc/os-relese && echo "$NAME" || echo "Unknown"
}

detect_distro_id() {
	[[ -f /etc/os-release ]] && . /etc/os-release && echo "$ID" || echo "unknown"
}

detect_init() {
	command -v systemctl >/dev/null && echo systemd && return
	command -v rc-service >/dev/null && echo openrc && return
	command -v sv >/dev/null && echo runit && return
	[[ -d /etc/init.d ]] && echo sysvinit && return
	echo unknown
}

detect_pkg_manager() {
	for pm in apt dnf pacman zypper xbps_install apk emerge; do
		command -v "$pm" >/dev/null && echo "$pm" && return
	done
	echo unknown
}

detect_boot_mode() {
	[[ -d /sys/firmware/efi ]] && echo UEFI || echo BIOS
}
