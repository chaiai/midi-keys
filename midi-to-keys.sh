#!/bin/bash

######################################################################
# Help                                                               #
######################################################################
Help()
{
    # Display Mappings
    echo "Pad Mappings:"
    echo
    echo "Pad 1 >> sudo apt update"
    echo "Pad 2 >> Enter"
    echo "Pad 3 >> Super"
    echo "Pad 4 >> Ctrl-C"
    echo "Pad 5 >> sudo apt upgrade"
    echo "Pad 6 >> Jetbot password"
    echo "Pad 7 >> Open terminal"
    echo "Pad 8 >> Desktop password"
    echo
}
######################################################################
######################################################################
# Main program                                                       #
######################################################################
######################################################################

# Get options
while getopts ":h" option; do
    case $option in
        h) # Display mappings help
            Help
    esac
done

aseqdump -p "MPK mini 3" | \
while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    case "$ev1 $ev2 $data1" in
        "Note on 62" ) xdotool type "sudo apt upgrade -y" ;;
        "Note on 64" ) xdotool key Return ;;
        "Note on 65" ) xdotool key super ;;
        "Note on 67" ) xdotool key ctrl+c ;;
        "Note on 69" ) xdotool type "sudo apt update" ;;
        "Note on 71" ) xdotool type jetbot ;;
        "Note on 72" ) xdotool key ctrl+alt+t ;;
        "Note on 74" ) xdotool key {enter+password+here}+Return;;
        "Note on 0" ) xdotool key  ;;
        "Note on 2" ) xdotool key  ;;
        "Note on 4" ) xdotool key  ;;
        "Note on 5" ) xdotool key  ;;
        "Note on 7" ) xdotool key  ;;
        "Note on 9" ) xdotool key  ;;
        "Note on 11" ) xdotool key  ;;
        "Note on 12" ) xdotool key  ;;
        "Note on 14" ) xdotool key  ;;
        "Note on 16" ) xdotool key  ;;
        "Note on 17" ) xdotool key  ;;
        "Note on 19" ) xdotool key  ;;
        "Note on 21" ) xdotool key  ;;
        "Note on 23" ) xdotool key  ;;
        "Note on 24" ) xdotool key  ;;
    esac
done
