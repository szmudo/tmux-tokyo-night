#!/usr/bin/env bash
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=src/utils.sh
. "$ROOT_DIR/../utils.sh"

# shellcheck disable=SC2005
plugin_hostname_icon=$(get_tmux_option "@theme_plugin_hostname_icon" " ")
plugin_hostname_accent_color=$(get_tmux_option "@theme_plugin_hostname_accent_color" "blue7")
plugin_hostname_accent_color_icon=$(get_tmux_option "@theme_plugin_hostname_accent_color_icon" "blue0")

function load_plugin() {
    echo "${hostname}"
}
load_plugin

export plugin_hostname_icon plugin_hostname_accent_color plugin_hostname_accent_color_icon
