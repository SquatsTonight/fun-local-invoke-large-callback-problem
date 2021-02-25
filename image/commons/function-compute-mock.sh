#!/bin/bash

SHELL_DIR="$(dirname $0)"

agentScript="agent.sh"
agentPath="/var/fc/runtime/nodejs12/agent.sh"

serverPort=${FC_SERVER_PORT:-9000}

if [ ! -f "$agentPath" ]; then
    echo "error: agent.sh not exist"
    exit 1;
fi

# /usr/local/bin/node /app/mock-server.js &
if ! ps aux | grep "$agentScript"  | grep -q -v grep ; then

    if [ -n "$SERVER_MODE" ]; then
        exec "$agentPath" start
        exit 0;
    else
        echo "server up"
        echo "$agentPath"
        exec "$agentPath" start &
    fi
fi

# wait until server started
# link https://stackoverflow.com/questions/9609130/efficiently-test-if-a-port-is-open-on-linux-without-nmap-or-netcat
while ! &>/dev/null </dev/tcp/127.0.0.1/${serverPort}; do
    sleep 0.01;
done

startTimestamp="$(date '+%s')$(date '+%N')"

echo "$(</app/baseCont)"