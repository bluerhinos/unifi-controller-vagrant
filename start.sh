#!/bin/bash
echo "Unifi Controller v`cat /var/lib/unifi/db/version` is now listening at:"
for i in `hostname --all-ip-addresses`
do
  echo "https://$i:8443"
done