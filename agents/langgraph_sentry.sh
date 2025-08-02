#!/bin/bash
echo "📡 LangGraph Sentry starting..."
docker run -d \
  --name langgraph \
  -p 8501:8501 \
  -v $PWD/langgraph:/app \
  langgraph/langgraph:latest
