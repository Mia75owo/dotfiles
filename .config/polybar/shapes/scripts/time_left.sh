#!/usr/bin/env bash
echo $(($(date +%h -d "today 23:30") - $(date +%h))):$(($(date +%M -d "today 23:30") - $(date +%M) - 1)):$((59 - $(date +%S)))
printf "%05d\n"
