#!/bin/bash
set -e
docker volume create data
docker run --rm -v data:/data alpine sh -c "echo Hej fra volumen! > /data/besked.txt"
docker run --rm -v data:/data alpine cat /data/besked.txt

if ! docker run --rm alpine cat /data/besked.txt; then
  echo "Som forventet: uden volumen kan containeren ikke se filen"
fi

docker run --rm --name skriver -v data:/data mit-image2 sh -c "echo Besked fra mit eget image! > /data/mitimage.txt"
docker rm -f skriver 2>/dev/null || true
docker run --rm -v data:/data alpine cat /data/mitimage.txt
