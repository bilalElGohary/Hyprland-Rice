#!/bin/bash

if [ -z "$1" ]; then
    # No argument: Print the list of choices for Rofi to display
    echo -e "Lock\nLogout\nSuspend\nReboot\nShutdown"
else
    # Argument provided: The user selected this option
    case "$1" in
        Shutdown) systemctl poweroff ;;
        Reboot)   systemctl reboot ;;
        Suspend)  systemctl suspend ;;
        Logout)   hyprctl dispatch exit ;;
        Lock)     hyprlock ;;
    esac
fi

