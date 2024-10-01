#!/bin/bash

process_name="blueman-tray"
pids=$(pgrep -f "$process_name")
for pid in $pids; do kill -9 $pid; done

process_name="blueman-applet"
pids=$(pgrep -f "$process_name")
for pid in $pids; do kill -9 $pid; done
