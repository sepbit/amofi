#!/usr/bin/env sh

#
# Check if ShellCheck is installed
#
if [ ! "$(command -v shellcheck)" ]; then
    echo "shellcheck command not found"
    exit
fi

#
# Execute ShellCheck
#
shellcheck src/*
