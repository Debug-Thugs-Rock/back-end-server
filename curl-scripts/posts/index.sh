#!/bin/sh

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="079a4f1bacba6bd6ef9a036e873b46aa"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
