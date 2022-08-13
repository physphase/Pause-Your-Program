#!/usr/bin/env bash

#This script allows to let the user pause or suspend a program or game when going AFK.
#Created by physphase, August 13th 2022

function toggleSuspend()
{
    PID=$(xprop -id `xdotool getwindowfocus` | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')
    status="$(ps aux | grep ${PID} | awk '{print $8}')"
    status=${status:0:1}
    
    case $status in
        S)
            kill -STOP "${PID}"
            ;;
        T)
            kill -CONT "${PID}"
            ;;
        *)
            echo "Invalid code"
    esac
 return 0
}

toggleSuspend