./cleanup.sh

# Need to limit the number of producers and users to avoid the error "Over withdrawn balance"
LIMIT_PROD_USER='--producer-limit 4 --user-limit 10 --num-voters 4 --num-producers-vote 4'

FUND='--max-unstaked 1000000'
RAM='--ram-funds 10000'

SYMBOL='--symbol XFS'

./bios-boot-tutorial.py -all $LIMIT_PROD_USER $FUND $RAM $SYMBOL
