#!/bin/sh

curl -o /dev/null -s -w "%header{set-cookie}\n" http://127.0.0.1:4567/give
curl -o /dev/null -s -w "%header{set-cookie}\n" http://127.0.0.1:4567/delete
curl --cookie "ok=yeah-baby" http://127.0.0.1:4567/show
echo
