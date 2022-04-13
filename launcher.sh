#!/bin/bash

# _term() {
#     echo "Caught SIGTERM signal!"
#     kill -TERM "$child"
# }

# trap _term SIGTERM

echo "\n\n---------- ENV VARIABLES ----------"
env

chmod +x ./dns_replace.sh

./dns_replace.sh

./srsRAN/build/srsenb/src/srsenb

# cd /srsRAN/build/srsenb/src
# ./main.sh


# cd srsRAN/build/srsenb/src
# rm enb.conf
# rm rr.conf
# rm sib.conf
# rm drb.conf
# rm rb.conf

# ./srsenb

# child=$!

# wait "$child"
