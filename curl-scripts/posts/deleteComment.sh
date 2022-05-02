#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="079a4f1bacba6bd6ef9a036e873b46aa"
ID="626ffea9ac318879d8452010"
COMMENTID=62705019e3f6cc9350e295fd

curl "${API}${URL_PATH}/${ID}/commentdelete" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "post": {
      "commentId": "'"${COMMENTID}"'"
    }
  }'

echo