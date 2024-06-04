#!/bin/sh

curl -o /dev/null -s -w "%{http_code}\n" http://127.0.0.1:4567/
curl -o /dev/null -s -w "%header{location}\n" http://127.0.0.1:4567/

