#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="51f0152e48ca2cd88528117399bb1f1f"
TITLE="New Post 4"
TEXT="Post Text this is a test post 4"
ID="626ffeb2ac318879d8452011"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "post": {
      "text": "'"${TEXT}"'",
      "title": "'"${TITLE}"'"
    }
  }'

echo
