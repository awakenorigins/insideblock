#!/bin/bash
# Sync insideblock to /var/www and push to GitHub
cd /root/.openclaw/workspace/insideblock
cp -r index.html proposals/ assets/ CNAME /var/www/insideblock/
chown -R caddy:caddy /var/www/insideblock/
git add -A && git commit -m "Update: $(date +%Y%m%d-%H%M)" && git push origin main 2>&1
echo "✅ Deployed to VPS + GitHub Pages"
