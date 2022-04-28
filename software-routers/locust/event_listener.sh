#!/bin/bash
docker events --filter 'event=start' --filter 'event=stop' --format '{{.Actor.Attributes.name}}' | awk '{ system("/opt/route_setting.sh " $1) }'
