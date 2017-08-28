#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/todos"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "todo": {
      "name": "order invites",
      "todo_id": "4",
      "event_id":"1"
    }
  }'

echo
