#!/bin/sh

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="60ce48ba448906195895e172530f657b"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
