#!/bin/bash

#Define buttons on the "Wacom Intuos S Pad"
#Button numbers
#pad left to right (1) (2) (3) (8)
#stylus top to bottom (3) (2)

function custom-xsetwacom {
    echo "(1)Krita (2)Aseprite (3)Blender"
    read input
    
    if [ $input -eq 1 ]; then
        xsetwacom set "Wacom Intuos S Pad pad" Button 1 key Control_L key "z"
        xsetwacom set "Wacom Intuos S Pad pad" Button 2 key Control_L key Shift_L key "z"
        xsetwacom set "Wacom Intuos S Pad pad" Button 3 key +control 
        xsetwacom set "Wacom Intuos S Pad pad" Button 8 key "e"
    elif [ $input -eq 2 ]; then
        xsetwacom set "Wacom Intuos S Pad pad" Button 1 key Control_L key "z"
        xsetwacom set "Wacom Intuos S Pad pad" Button 2 key Control_L key Shift_L key "z"
        xsetwacom set "Wacom Intuos S Pad pad" Button 3 key "b" 
        xsetwacom set "Wacom Intuos S Pad pad" Button 8 key "e" 
        
        xsetwacom set "Wacom Intuos S Pen stylus" Button 3 key +alt

    elif [ $input -eq 3 ]; then
        echo "Didn't do this one yet :)"
        # xsetwacom set "Wacom Intuos S Pad pad" Button 1 key Control_L key "z"
        # xsetwacom set "Wacom Intuos S Pad pad" Button 2 key Control_L key Shift_L key "z"
        # xsetwacom set "Wacom Intuos S Pad pad" Button 3 key +control 
        # xsetwacom set "Wacom Intuos S Pad pad" Button 8 key "e"
    else
        echo "Option not recognized"
    fi
}
