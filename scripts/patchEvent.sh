#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events/2"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "event": {
      "title": "You are great",
      "user_id": "1"
      }
  }'

echo
