#!/bin/bash
API_KEY_FILE="/etc/sysconfig/google_api_keys"
BINARY_FILE="/usr/bin/chromium-bin"
if [ -f $API_KEY_FILE ]; then
  . $API_KEY_FILE
  export GOOGLE_API_KEY
  export GOOGLE_DEFAULT_CLIENT_ID
  export GOOGLE_DEFAULT_CLIENT_SECRET
fi

$BINARY_FILE "$@"
