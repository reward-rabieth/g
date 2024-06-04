#!/bin/sh

curl "http://127.0.0.1:4567/show/all?really=yes&when=now"

curl -o /dev/null -s -w "%{http_code}\n" http://127.0.0.1:4567/lost
curl -o /dev/null -s -w "%{http_code}\n" http://127.0.0.1:4567/teapot

curl -i http://127.0.0.1:4567/setter
echo

