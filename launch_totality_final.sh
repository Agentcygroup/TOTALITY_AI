#!/bin/bash
cd "/Volumes/AXSWARM_SSD/TOTALITY_FINAL"
source ~/.zshrc
echo "🚀 LAUNCHING TOTALITY ∞"
./agents/neo4j_ingest.sh
./agents/ai_terminal.sh
./agents/langgraph_sentry.sh
