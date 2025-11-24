# speedmelt
DIY bandwidth testing to/from GCP, for exercising very fast internet connections.

## What is this?

Have you hit the limits of what speedtest-cli or he.com can test?  Would you like to know if that symmetric multi-gigabit connection (2Gbs, 5Gbps, moar?) can really do what it says on the tin?  You've come to the right place.

This is a small tool which will create a VM on GCP with more bandwidth than you have, run iperf3 to and from that VM, and show you the results.  It does its best not to leak resources, but please be mindful of the cloud cost.  On a fast connection, this consumes at least a few $USD for each run (typically around $2 as of 2025-11-24).

## How do I use it?

Create a new GCP Project and configure gcloud to use it by default.
Run `create-project-level-firewall-rule.sh` once to enable the iPerf traffic into this project.
Run `speedmelt` and wait for the iperf3 results to pour in.
