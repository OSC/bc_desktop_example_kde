#!/bin/bash
set -e

# This will enable interactive apps on ood-images-full
printf "\nrnode_uri: '/rnode'\n" >> /etc/ood/config/ood_portal.yml
printf "\nnode_uri: '/node'\n" >> /etc/ood/config/ood_portal.yml

# Control which hosts are available for interactive app running by setting an Apache PCRE
# Regular expression used for whitelisting allowed hostnames of nodes
# Examples:
#     host_regex: '[\w.-]+\.example\.com'
#     host_regex: '(owens|pitzer|ruby)\.osc\.edu)'
# Default: '[^/]+' (allow reverse proxying to all hosts, this allows external
# hosts as well)
printf "\nhost_regex: 'head'\n" >> /etc/ood/config/ood_portal.yml

# Update the installed portal configuration and restart Apache
/opt/ood/ood-portal-generator/sbin/update_ood_portal
systemctl try-restart httpd24-httpd.service httpd24-htcacheclean.service

# Update the cluster files to know about websockify and TurboVNC
# Note that the indentation is important
cat >> /etc/ood/config/clusters.d/example.yml <<EOF

  batch_connect:
    vnc:
      script_wrapper: |
        export PATH="/opt/TurboVNC/bin:$PATH"
        export WEBSOCKIFY_CMD="/bin/websockify"
        %s  # <--- The rest of the Batch Connect script is interpolated here
EOF

echo 'Finished enabling interactive apps'