#!/usr/bin/env bash
set -euo pipefail

echo "Checking Git installation..."
if ! command -v git >/dev/null 2>&1; then
  echo "Git is not installed. Install it with: sudo apt update && sudo apt install -y git"
  exit 1
fi

echo "Git version:"
git --version
echo "Project setup check completed."

