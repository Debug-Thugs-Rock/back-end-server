#!/bin/sh

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="079a4f1bacba6bd6ef9a036e873b46aa"
ID="626ffea9ac318879d8452010"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
