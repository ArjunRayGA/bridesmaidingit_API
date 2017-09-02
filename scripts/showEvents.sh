#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events/48"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo
