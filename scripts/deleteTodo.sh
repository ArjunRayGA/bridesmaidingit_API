#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/todos"
curl "${API}${URL_PATH}/5" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "todo": {
      "event_id": "1"
      "name": "title testing curl yay",
    }
  }'

echo
