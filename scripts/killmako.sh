#!/bin/bash

process_name="mako"
pids=$(pgrep -f "$process_name")
for pid in $pids; do kill -9 $pid; done
