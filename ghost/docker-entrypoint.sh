#!/bin/bash

set -e

apk add --no-cache --update jq

tmp=$(mktemp)

jq ".mail.options.auth.pass = \"$(cat /run/secrets/ghost_mailgun_pass)\"" config.json > "$tmp"

mv "$tmp" config.json

source '/usr/local/bin/docker-entrypoint.sh'
