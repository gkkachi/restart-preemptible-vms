#!/bin/bash

gcloud compute instances list \
| awk '{if ($4 == "true" && $6 == "TERMINATED") print "gcloud compute instances start "$1" --zone "$2}' \
| xargs -I @ bash -c @
