#!/bin/sh

API="http://localhost:4741"
URL_PATH="/users-list"
TOKEN="d0074b45018e35e387855fac8b99e077"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
