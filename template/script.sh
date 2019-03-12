#!/usr/bin/env bash
set -x

echo "Starting up KDE."

# Namespace all the KDE temporary directories for this session
DESKTOP_TEMP=$(mktemp -d)
export TMPDIR="$DESKTOP_TEMP"
export XDG_RUNTIME_DIR="$DESKTOP_TEMP"
startkde 2>&1

echo 'KDE has exited.'