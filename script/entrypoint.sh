#!/bin/bash

# Run every 5 minutes
while true; do python "urban-traffic/scheduler.py"; sleep 300 ; done
