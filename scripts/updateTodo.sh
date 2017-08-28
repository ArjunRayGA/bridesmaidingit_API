#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/todos"
curl "${API}${URL_PATH}/3" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "todo": {
      "name": "order invites skdjfdslj",
      }
  }'

echo
