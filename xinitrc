#!/bin/sh
xrdb -merge $HOME/.Xresources
start-pulseaudio-x11
i3
