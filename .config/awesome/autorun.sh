#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run "numlockx on &"
run "sus.sh"
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Tapping Enabled' 1 &
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Natural Scrolling Enabled' 1 &
run "nm-applet &"