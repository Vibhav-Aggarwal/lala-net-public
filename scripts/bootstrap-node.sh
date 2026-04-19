#!/usr/bin/env bash
# bootstrap-node.sh — minimal bootstrap for adding an Ubuntu 24.04 node to Lala Net.
# Intended as a template; adjust USERNAME, TUNNEL_ID, etc. before running.
set -euo pipefail

USERNAME="${USERNAME:-vibhavaggarwal}"
HEADSCALE_URL="${HEADSCALE_URL:-https://YOUR_CONTROL_PLANE_DOMAIN}"
HEADSCALE_PREAUTH_KEY="${HEADSCALE_PREAUTH_KEY:?must set HEADSCALE_PREAUTH_KEY env var}"

# 1. Install Tailscale open-source client
curl -fsSL https://tailscale.com/install.sh | sh

# 2. Join Headscale-managed mesh
sudo tailscale up \
  --login-server="${HEADSCALE_URL}" \
  --authkey="${HEADSCALE_PREAUTH_KEY}" \
  --accept-routes \
  --accept-dns=true \
  --ssh

# 3. Install cloudflared (Cloudflare Tunnel daemon)
curl -fsSL https://pkg.cloudflare.com/install.sh | sudo bash
sudo apt-get install -y cloudflared

# 4. Bind SSH daemon to port 2222 so Tailscale SSH can coexist on port 22
sudo sed -i 's/^#Port 22/Port 2222/' /etc/ssh/sshd_config
sudo systemctl reload ssh

# 5. (Optional) Publish SSH through Tailscale to port 2222
sudo tailscale serve --tcp 2222 tcp://localhost:22

echo "Node bootstrapped. Finish Cloudflare Tunnel + cloudflared config manually."
