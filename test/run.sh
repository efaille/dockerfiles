#!/bin/bash

isFileExist() {
  if [ -f "$1" ]; then
    return 0
  else
    return 1
  fi
}

isVariableExist() {
  if [ "$1" ]; then
    return 0
  else
    return 1
  fi
}

isPortAlive() {
  if (: < /dev/tcp/$1/$2) 2>/dev/null; then
    return 0
  else
    return 1
  fi
}

# Check if file exist
if isFileExist /data/test; then
    echo "file exist"
fi

# Check if variable exist
if isVariableExist "$TEST_VARIABLE"; then
    echo "variable exist"
fi

# Check if port is alive
if isPortAlive api 8080; then
    echo "port 8080 is alive"
fi

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
