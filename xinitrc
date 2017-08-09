#!/bin/sh
xrdb -merge $HOME/.Xresources
start-pulseaudio-x11
exec i3
exit
