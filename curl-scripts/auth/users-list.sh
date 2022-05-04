#!/bin/sh

API="http://localhost:4741"
URL_PATH="/users-list"
Token="636fb170f409c6789c905b0a183ad43f"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
