#!/bin/bash
set -x

# Install easy repo dependencies
yum-config-manager --add-repo https://turbovnc.org/pmwiki/uploads/Downloads/TurboVNC.repo
yum install -y epel-release
yum install -y nc python-websockify turbovnc

# Install KDE
yum groupinstall -y "KDE Plasma Workspaces"

echo 'Finished'
