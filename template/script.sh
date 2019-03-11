#!/usr/bin/env bash
set -x
# Launch the RStudio Server
echo "Starting up KDE."

export KDEHOME="$TMPDIR/.kde4-$USER"
export XDG_RUNTIME_DIR="$TMPDIR/.kde4-$USER"
startkde startkde 2>&1

echo 'KDE has exited.'