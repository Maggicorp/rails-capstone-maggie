#!/bin/bash
TOKEN=d856ae9d9aa0f66ddfd5edde798bb875

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/poems"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
