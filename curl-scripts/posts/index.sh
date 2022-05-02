#!/bin/sh

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="51f0152e48ca2cd88528117399bb1f1f"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
