#!/bin/ash
echo "Starting TS daemon"
tailscaled --tun=userspace-networking &
sleep 5
tailscale up --authkey=TAILSCALE_AUTH_KEY --hostname=simple-docker-compose
tailscale status
sleep infinity