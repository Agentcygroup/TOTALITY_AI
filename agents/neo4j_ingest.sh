#!/bin/bash
echo "⚡ Launching Neo4j Agent..."
docker run -d --name neo4j -p 7474:7474 -p 7687:7687 \
  -e NEO4J_AUTH=neo4j/test \
  -v neo4j_data:/data \
  neo4j:5.18
