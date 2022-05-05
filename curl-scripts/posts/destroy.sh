#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="51f0152e48ca2cd88528117399bb1f1f"
ID="626ffeb2ac318879d8452011"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
