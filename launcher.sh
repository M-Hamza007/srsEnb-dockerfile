#!/bin/bash

_term() {
    echo "Caught SIGTERM signal!"
    kill -TERM "$child"
}

trap _term SIGTERM

echo "\n\n---------- ENV VARIABLES ----------"
env

chmod +x ./dns_replace.sh

./dns_replace.sh

./srsRAN/build/srsenb/src/srsenb

child=$!

wait "$child"
