#!/bin/bash

readonly DEVICE_IDENTIFIER="$1"
readonly TO_PERCENTAGE="$2"

# $1 {string} device_identifier: name of a directory found in "sys/class/backlight/"
function gen_backlight_path {
    local device_identifier=$1 

    echo "/sys/class/backlight/${device_identifier}"
}

function gen_brightness_path {
    local backlight_path=$1
    local key=$2

    echo "${backlight_path}/${key}"
}

# Gets a brightness value by key so {brightness, max_brightness, actual_brightness}
# 
# $1 {string} backlight path
# $2 {string} key: {brightness, max_brightness, actual_brightness}. Other values will produce unexpected results.
function get_brightness_value {
    local backlight_path=$1 
    local key=$2

    echo "$(< "$(gen_brightness_path "$backlight_path" "$key")")"
}

# $1 {string} backlight path
function get_current_brightness {
    local backlight_path=$1 

    get_brightness_value "$backlight_path" "brightness"
}

# $1 {string} device_identifier: name of a directory found in "sys/class/backlight/"
function get_maximum_brightness {
    local backlight_path=$1 

    get_brightness_value "$backlight_path" "max_brightness"
}

# Sets the (backlight) brightness of {device_identifier} to {to_percentage}.
#
# $1 {string} device_identifier: name of a directory found in "sys/class/backlight/"
# $2 {number} to_percentage: percentage the device should be set to (0 - 100)
function set_brightness {
    local device_identifier=$1 
    local to_percentage=$2 

    local backlight_path=$(gen_backlight_path "$device_identifier")

    local maximum_brightness=$(get_maximum_brightness "$backlight_path")
    local brightness_percentage_point=$(( "$maximum_brightness" / 100 ))

    local brightness_path=$(gen_brightness_path "$backlight_path" "brightness")
    # TODO: Floating point arithmatics
    local to_value=$(( $brightness_percentage_point * $to_percentage ))
    if [[ "$to_value" -gt "$maximum_brightness" ]]; then 
        to_value=$maximum_brightness
    fi

    echo "setting $to_value to \"${brightness_path}\""

    echo "$to_value" | sudo tee "$brightness_path"
}


if [[ -z "$DEVICE_IDENTIFIER" ]]; then 
    echo "error: device_identifier not given"
    exit 1
fi

if [[ -z "$TO_PERCENTAGE" ]]; then
    echo "error: to_percentage not given"
    exit 1 
fi
if ! (("$TO_PERCENTAGE" == "$TO_PERCENTAGE")); then
    echo "error: to_percentage isn't an integer"
    exit 1
fi 

set_brightness "$DEVICE_IDENTIFIER" "$TO_PERCENTAGE"
exit 0