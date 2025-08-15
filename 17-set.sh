#!/bin/bash

set -e #setting the automatic exit, if we get error

failure() {
    echo "Failed at: $1:$2"

}

trap 'failure "${LINEND}" "BASH_COMMAND" ' ERR #ERR is the error signal

echo "Hello World success"
echooo "Hello World failure"
echo "Hello World after failure"
