#!/bin/bash

# Define the Buildroot directory relative to this script
BUILDROOT_DIR="/home/dan/assignment-4-DanMekler/buildroot"

# Check if the Buildroot directory exists
if [ -d "$BUILDROOT_DIR" ]; then
    echo "Cleaning Buildroot environment..."
    (cd "$BUILDROOT_DIR" && make distclean)
    echo "Buildroot environment cleaned."
else
    echo "Error: Buildroot directory not found at $BUILDROOT_DIR."
    exit 1
fi
