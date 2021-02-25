#!/bin/bash


# The absolute path of this file.
CURDIR="$( cd "$( /usr/bin/dirname "${BASH_SOURCE[0]}" )" && pwd -P )"

# Set some default configuration.
export FC_SERVER_PORT=9000
export FC_SERVER_PATH="/app/server/nodejs4.4"

echo ${FC_SERVER_PATH}/src/server.js
/usr/local/bin/node --max-old-space-size=8192 ${FC_SERVER_PATH}/src/server.js
command=$1
