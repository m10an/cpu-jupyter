#!/usr/bin/env bash
cd $(cd -P -- "$(dirname -- "$0")" && pwd -P)

echo "Removing cpu-jupyter from docker swarm."
docker stack rm cpu
