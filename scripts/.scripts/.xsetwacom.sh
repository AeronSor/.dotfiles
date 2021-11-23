#!/bin/bash

#Define buttons on the "Wacom Intuos S Pad"
function custom-xsetwacom {
	xsetwacom set "Wacom Intuos S Pad pad" Button 1 key Control_L key "z"
	xsetwacom set "Wacom Intuos S Pad pad" Button 2 key Control_L key Shift_L key "z"
	xsetwacom set "Wacom Intuos S Pad pad" Button 3 key +control 
	xsetwacom set "Wacom Intuos S Pad pad" Button 8 key "e"
}
