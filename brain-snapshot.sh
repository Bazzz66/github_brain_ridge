#!/bin/sh
# Eenrichtings-sync: brain vault -> GitHub
# Runt via n8n SSH Execute Command, elke 10 minuten

GIT=/var/services/homes/claude_ssh/bin/git
BRAIN=/volume2/projects/_brain

cd "$BRAIN" || exit 1

if $GIT status --porcelain | grep -q .; then
    $GIT add -A
    $GIT -c user.email="bashendrikx@gmail.com" -c user.name="Bas Hendrikx" \
        commit -m "snapshot: $(date '+%Y-%m-%d %H:%M')"
    $GIT push origin main
fi
