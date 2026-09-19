#!/usr/bin/env bash
set -u

echo "== Hosting Platform Health =="
echo "Time: $(date -Is)"
echo "Host: $(hostname)"
echo "Kernel: $(uname -sr)"

echo "--- Load ---"
uptime

echo "--- Memory ---"
free -h 2>/dev/null || true

echo "--- Disk ---"
df -h /

echo "--- Listening services ---"
ss -lnt 2>/dev/null || true

echo "--- Failed services ---"
systemctl --failed --no-pager 2>/dev/null || true
