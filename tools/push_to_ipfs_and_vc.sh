#!/bin/bash
set -euo pipefail

ROOT="/Volumes/AXSWARM_SSD/TOTALITY_FINAL"
PROOF_BUNDLE=$(ls -t "$ROOT/proofs"/TOTALITY_PROOF_DROP_*.tar.gz | head -n 1)

echo "🔗 Pinning to IPFS..."
CID=$(ipfs add -q "$PROOF_BUNDLE" | tee "$ROOT/logs/ipfs_cid.txt")

echo "🌐 Publishing GitHub Release..."
gh release create "proof-$(date +%Y%m%d%H%M%S)" "$PROOF_BUNDLE" \
  --title "TOTALITY ∞ Proof Drop — $(date)" \
  --notes "Includes full benchmark logs, quantum-symbolic runtime traces, and IP verification.\nIPFS CID: $CID"

echo "🔐 Notarizing via ENS and ZKEY..."
bash "$ROOT/tools/ens-cli.sh" --notarize "$PROOF_BUNDLE"
bash "$ROOT/tools/zkey-cli.sh" --notarize "$PROOF_BUNDLE"

echo "✅ TOTALITY ∞ Global Proof Propagation Complete — $(date)"
