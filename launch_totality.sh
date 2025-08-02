#!/bin/bash
cd "/Volumes/AXSWARM_SSD/TOTALITY_FINAL"
source ~/.zshrc
echo "🔁 LAUNCHING TOTALITY ∞ SWARM..."
./agents/neo4j_ingest.sh
./agents/langgraph_sentry.sh
./agents/ai_terminal.sh
