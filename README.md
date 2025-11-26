# speedmelt
DIY bandwidth testing to/from GCP, for exercising very fast internet connections.

## What is this?

Have you hit the limits of what speedtest-cli or he.com can test?  Would you like to know if that symmetric multi-gigabit connection (2Gbs, 5Gbps, moar?) can really do what it says on the tin?  You've come to the right place.

This is a small tool which will create a VM on GCP with more bandwidth than you have, run iperf3 to and from that VM, and show you the results.  It does its best not to leak resources, but please be mindful of the cloud cost.  On a fast connection, this consumes at least a few $USD for each run (typically around $2 as of 2025-11-24).

## How do I use it?

Create a new GCP Project and configure gcloud to use it by default.
Run `create-project-level-firewall-rule.sh` once to enable the iPerf traffic into this project.
Run `speedmelt` and wait for the iperf3 results to pour in.

## What dependencies does it have?

You need to make sure you have iperf3 and netcat installed, and the gcloud CLI installed and logged in, with a default project.

## How fast can it go?

Using an n2-standard-8 in us-east (South Carolina) you can get 7Gbps symmetric between two VMs in that region.  From us-central to us-east you can also get about 7Gbps symmetric.

Running speedmelt on a Digital Ocean Droplet in Atlanta you can get 10Gbps down and almost 7Gbps up, which implies the ingress limit for the n2-standard-8 is 7Gbps but the egress limit is at least 10Gbps.
