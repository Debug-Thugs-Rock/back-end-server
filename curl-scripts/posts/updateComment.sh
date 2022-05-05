#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="079a4f1bacba6bd6ef9a036e873b46aa"
ID="626ffea9ac318879d8452010"
COMMENTID=6270589b3f22c698399e0ec7
COMMENT="updated comment"

curl "${API}${URL_PATH}/${ID}/commentupdate" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "post": {
      "commentId": "'"${COMMENTID}"'",
      "newComment": "'"${COMMENT}"'"
    }
  }'

echo