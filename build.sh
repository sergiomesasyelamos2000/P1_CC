#!/bin/bash

docker-compose down -v
docker-compose build
docker-compose up -d

docker exec p1_cc-ldap-1 ./container/service/slapd/assets/test/change_password.sh

