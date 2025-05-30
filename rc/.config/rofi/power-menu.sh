#!/bin/bash

# Define the options for the power menu
options="\n\n\n\n"

# Use Rofi to display the options with the custom theme
choice=$(echo -e "$options" | rofi -dmenu -theme ~/.config/rofi/power_menu_theme.rasi -p "Power Menu")

# Execute the chosen option
case $choice in
    )
        systemctl poweroff
        ;;
    )
        systemctl reboot
        ;;
    )
        hyprlock
        ;;
    )
        hyprctl dispatch exit
        ;;
    )
        systemctl suspend
        ;;
    
esac