#!/usr/bin/env bash
set -euo pipefail

/usr/bin/git pull
/usr/bin/docker compose pull
/usr/bin/docker compose up -d
/usr/bin/docker image prune -f
