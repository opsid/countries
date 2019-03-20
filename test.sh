#!/usr/bin/env bash
docker rm -f $(docker ps -a -f name=countries_iso -q)
docker run -d --name "countries_iso" -p "8090:80" opsid/countries 
cd data && for f in *.json; do curl -L -G -I "http://localhost:8090/$(printf '%s\n' "${f%.json}")"; done && cd ..
