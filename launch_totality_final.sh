#!/bin/bash
cd "/Volumes/AXSWARM_SSD/TOTALITY_FINAL"
source ~/.zshrc
echo "🔁 Launching TOTALITY ∞..."
./agents/neo4j_ingest.sh
./agents/ai_terminal.sh
./agents/langgraph_sentry.sh
