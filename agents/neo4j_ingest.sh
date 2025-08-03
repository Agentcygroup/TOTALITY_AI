#!/bin/bash
docker rm -f totality-neo4j || true
docker run -d --name totality-neo4j -p 7474:7474 -p 7687:7687 -e NEO4J_AUTH=neo4j/test neo4j:5.18
