#!/bin/bash
docker ps
docker images
docker pull thegostisdead/front_app:latest
docker stop frontend || true 
docker rm frontend || true
docker run -p 8080:8080 --name=frontend -d thegostisdead/front_app:latest