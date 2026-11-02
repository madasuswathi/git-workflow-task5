#!/usr/bin/env bash
set -euo pipefail

echo "DevOps Git Workflow project health check"
echo "----------------------------------------"

for path in README.md .gitignore docs scripts logs; do
  if [[ -e "$path" ]]; then
    echo "[OK] $path exists"
  else
    echo "[ERROR] $path is missing"
    exit 1
  fi
done

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "[OK] Git repository initialized"
else
  echo "[INFO] Git repository not initialized yet. Run: git init"
fi

echo "Health check completed."

