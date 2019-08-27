# This script is used to boot up EOS custom network with the following versions:
# bios-boot-tutorial.py: take from eos source code github branch v1.6.x
# nodeos/cleos/keosd: v1.6.x
# eosio.cdt (e.g. eosio-cpp): v1.5.x
# eosio.contracts: v1.5.x
# No guarantee for other version combination

./cleanup.sh

# Need to limit the number of producers and users to avoid the error "Over withdrawn balance"
# If the producer-limit is increased, the boot sequence can be failed
LIMIT_PROD_USER='--producer-limit 2 --user-limit 4 --num-voters 2 --num-producers-vote 2'

FUND='--max-unstaked 1000000'
RAM='--ram-funds 10000'

SYMBOL='--symbol XFS'

CONTRACT_DIR='--contracts-dir /root/eosio.contracts/build'

NODEOS_BIN='--nodeos /usr/bin/nodeos'
KEOSD_BIN='--keosd /usr/bin/keosd'
CLEOS_BIN='--cleos /usr/bin/cleos '

./bios-boot-tutorial.py -all $LIMIT_PROD_USER $FUND $RAM $SYMBOL $CONTRACT_DIR $NODEOS_BIN $KEOSD_BIN $CLEOS_BIN 
