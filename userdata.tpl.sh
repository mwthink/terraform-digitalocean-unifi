#!/bin/bash
LE_FQDN="${fqdn}"
LE_EMAIL="${email}"
INSTALL_SCRIPT="https://get.glennr.nl/unifi/install/unifi-${unifi_version}.sh"
SCRIPT_PATH="/tmp/install-unifi.sh"
SCRIPT_ARGS="--skip"

apt-get update
apt-get upgrade -y
apt-get install -y ca-certificates wget
wget -O $${SCRIPT_PATH} $${INSTALL_SCRIPT}

if [ ! -z "$${LE_FQDN}" ]; then
  if [ ! -z "$${LE_EMAIL}" ]; then
    SCRIPT_ARGS="$${SCRIPT_ARGS} --fqdn $${LE_FQDN} --email $${LE_EMAIL}"
  fi
fi

bash $${SCRIPT_PATH} $${SCRIPT_ARGS}
