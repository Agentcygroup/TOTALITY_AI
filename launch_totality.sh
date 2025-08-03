#!/bin/bash
cd "/Volumes/AXSWARM_SSD/TOTALITY_FINAL"
source ~/.zshrc
echo "🔁 LAUNCHING TOTALITY ∞ SWARM..."
"/Volumes/AXSWARM_SSD/TOTALITY_FINAL/agents/neo4j_ingest.sh"
"/Volumes/AXSWARM_SSD/TOTALITY_FINAL/agents/langgraph_sentry.sh"
"/Volumes/AXSWARM_SSD/TOTALITY_FINAL/agents/ai_terminal.sh"
