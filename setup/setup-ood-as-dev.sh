#!/bin/bash
# set -e

# This will set up the user ood as an app developer on the path ~ood/ondemand/dev

for user in ood vagrant; do
  mkdir -p "/var/www/ood/apps/dev/$user"
  sudo -u "$user" mkdir -p "/home/$user/ondemand/dev"

  ln -s "/home/$user/ondemand/dev" "/var/www/ood/apps/dev/$user/gateway"

  echo "Finished setting $user up as a developer on path ~$user/ondemand/dev"
done
