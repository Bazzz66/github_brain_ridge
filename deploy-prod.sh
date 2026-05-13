#!/bin/sh
set -e
cd /volume2/projects/github_brain_ridge
git pull origin main
cp .env.prod .env
sudo /usr/local/bin/docker compose up --build -d
echo "[$(date)] prod deployed: github_brain_ridge"
