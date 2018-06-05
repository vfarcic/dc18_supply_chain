#!/bin/bash
#setup PWD DTR Vars
export DTR_URL="$(curl -sS https://${PWD_HOST_FQDN}/sessions/${SESSION_ID} | jq -r '.instances[] | select(.hostname == "worker1") | .proxy_host').direct.${PWD_HOST_FQDN}"
export DTR_USERNAME=admin