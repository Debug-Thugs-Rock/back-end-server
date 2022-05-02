#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="079a4f1bacba6bd6ef9a036e873b46aa"
ID="626ffea9ac318879d8452010"
COMMENT="attempting to comment 4"
LIKES=3

curl "${API}${URL_PATH}/${ID}/comments" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "post": {
      "comment": "'"${COMMENT}"'"
    }
  }'

echo
