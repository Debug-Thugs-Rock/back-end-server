#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-in"
EMAIL="l@l.com"
PASSWORD="l"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "username": "'"${USERNAME}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
