#!/bin/bash
echo "=== SYSTEM CHECK ==="
echo "Date: $(date)"
echo ""
echo "=== WSL ==="
wsl.exe --list --verbose 2>/dev/null || echo "WSL2 Running"
echo ""
echo "=== Tools ==="
pwsh --version
az --version
m365 --version
echo ""
echo "=== Git Status ==="
cd /mnt/c/Labs && git status
echo "==================="
