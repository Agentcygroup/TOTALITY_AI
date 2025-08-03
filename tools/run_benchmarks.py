import json, time
with open("/Volumes/AXSWARM_SSD/TOTALITY_FINAL/logs/full_benchmark_output.json", "w") as f:
  json.dump({"status": "placeholder", "timestamp": time.time()}, f)
