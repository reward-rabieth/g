#!/bin/sh

curl http://127.0.0.1:4567/?a=Anna
echo
curl --data 'a=Anna' http://127.0.0.1:4567/
echo
curl http://127.0.0.1:4567/one?a=Alf
echo
curl --data 'a=Alf' http://127.0.0.1:4567/one
echo
curl "http://127.0.0.1:4567/two?a=Ant%20Man&b=Batman"
echo
curl --data 'a=Ant%20Man&b=Batman' http://127.0.0.1:4567/two
echo
curl "http://127.0.0.1:4567/p/141/c/BE?a=Antwerp"
echo
curl --data 'a=Antwerp' http://127.0.0.1:4567/p/141/c/BE
echo

