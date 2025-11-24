#!/bin/bash

# Run this once
gcloud compute firewall-rules create allow-iperf-tcp5201 \
  --direction=INGRESS \
  --action=allow \
  --rules=tcp:5201 \
  --source-ranges=0.0.0.0/0 \
  --description="Allow inbound iperf3 (tcp/5201) from anywhere" \
  --priority=1000
