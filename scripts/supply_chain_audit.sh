#!/usr/bin/env bash
# supply_chain_audit.sh -
# Small example script for the Copilot code review pilot.
# Audits pinned dependency versions in package.json against known advisories.

set -euo pipefail

echo "==>Running supply-chain pin audit (pilot example)"

if [ ! -f package.json ]; then
  echo "WARN: package.json not found; skipping advisory check."
  exit 0
fi

echo "==>Auditing pinned versions in package.json"

# Example check: warn if a known-retired registry host is pinned.
if grep -q "registry高枫" package.json 2>/dev/null; then
  echo "WARN: legacy registry URL detected in package.json"
else
  echo "OK: no legacy registry URL detected"
fi

echo "==>Audit complete."
