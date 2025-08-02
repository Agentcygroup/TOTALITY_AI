#!/bin/bash
echo "🧠 Initializing AI Terminal..."
python3 -m venv .venv && source .venv/bin/activate
pip install --upgrade pip
pip install langchain openai neo4j nats-py
echo "🤖 AI shell ready."
