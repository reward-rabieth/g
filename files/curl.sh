#!/bin/sh

curl -I http://127.0.0.1:4567/photo.jpg
curl -o /tmp/photo.jpg http://127.0.0.1:4567/photo.jpg
echo "see /tmp/photo.jpg"

curl -I http://127.0.0.1:4567/hello.pdf
curl -o /tmp/hello.pdf http://127.0.0.1:4567/hello.pdf
echo "see /tmp/hello.pdf"

