#!/bin/bash

set -e

apk add --no-cache jq

jq ".mail.options.auth.pass = \"$(cat /run/secrets/ghost_mailgun_pass)\"" /var/lib/ghost/config.json > /var/lib/ghost/config.production.json

docker-entrypoint.sh node current/index.js
