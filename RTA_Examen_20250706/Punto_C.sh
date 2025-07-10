#!/bin/bash
cd ~/UTN-FRA_SO_Examenes/202411/docker
docker build -t agus2109/agusweb_agus:latest .
docker push agus2109/agusweb_agus:latest
docker compose up -d
curl localhost:81
curl localhost:81/file/info.txt

