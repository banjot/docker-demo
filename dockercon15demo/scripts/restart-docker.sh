#!/bin/bash
docker-machine ls -q | grep -E 'swarm-[0-9]+' | parallel docker-machine ssh {} "restart docker"