#!/bin/bash
if [[ "$1" = "--open" ]]; then
    xdg-open "https://clock.clockodo.com"
    exit 0
fi

# Email
CLOCKODO_USER=
CLOCKODO_API_KEY=

CURRENT_CLOCK=$(curl -s --location --request GET 'https://my.clockodo.com/api/clock' --header 'Content-Type: application/json' --header "X-ClockodoApiUser: ${CLOCKODO_USER}" --header "X-ClockodoApiKey: ${CLOCKODO_API_KEY}")

CURRENT_TASK=$(echo $CURRENT_CLOCK | jq -r '.running.text')

ICON=""

if [[ "$CURRENT_TASK" != "null" ]]; then
  echo "$ICON ${CURRENT_TASK:0:20}..." 
else
  echo ""
fi

