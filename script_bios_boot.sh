#!/bin/bash

# Need to limit the number of producers and users to avoid the error "Over withdrawn balance"
LIMIT_PROD_USER='--producer-limit 10 --user-limit 10 --num-voters 5 --num-producers-vote 5 --ram-funds 1000000'

# Need to specify wallet dir with the default wallet dir because the cmd "cleos wallet unlock" only knows to look up in the default location 
WALLET_DIR='--wallet-dir ~/eosio-wallet'

# --symbol opt doesn't work
SYMBOL='--symbol FST'

./bios-boot-tutorial.py -all $LIMIT_PROD_USER $WALLET_DIR | tee my_log.txt
