#!/bin/sh

curl http://127.0.0.1:4567/
echo
curl http://127.0.0.1:4567/people
echo
curl --data '' http://127.0.0.1:4567/people
echo
curl http://127.0.0.1:4567/people/141
echo
curl --data '' http://127.0.0.1:4567/people/141
echo
curl http://127.0.0.1:4567/country/NL
echo
curl http://127.0.0.1:4567/people/141/country/BE
echo

echo "should be all 404:"
curl -o /dev/null -s -w "%{http_code}\n" http://127.0.0.1:4567/p
curl -o /dev/null -s -w "%{http_code}\n" http://127.0.0.1:4567/country/az
curl -o /dev/null -s -w "%{http_code}\n" http://127.0.0.1:4567/country/A9Z
curl -o /dev/null -s -w "%{http_code}\n" http://127.0.0.1:4567/people/000/country/NL

