# For restart, never ever use --genesis and --delete-all-blocks. 
# Instead, use --replay-blockchain --hard-replay-blockchain for only one time
# (not needed for subsequent restarts)

REPLAY='--hard-replay-blockchain'

../../build/programs/nodeos/nodeos --max-irreversible-block-age -1 --contracts-console --blocks-dir /root/eos-mysql/tutorials/bios-boot-tutorial/nodes/00-eosio/blocks --config-dir /root/eos-mysql/tutorials/bios-boot-tutorial/nodes/00-eosio --data-dir /root/eos-mysql/tutorials/bios-boot-tutorial/nodes/00-eosio --chain-state-db-size-mb 1024 --http-server-address 127.0.0.1:8000 --p2p-listen-endpoint 0.0.0.0:9000 --max-clients 14 --p2p-max-nodes-per-host 14 --enable-stale-production --producer-name eosio --private-key ["EOS8Znrtgwt8TfpmbVpTKvA2oB8Nqey625CLN8bCN3TEbgx86Dsvr","5K463ynhZoCDDa4RDcr63cUwWLTnKqmdcoTKTHBjqoKfv4u5V7p"] --http-validate-host false --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --plugin eosio::producer_plugin --plugin eosio::history_plugin --plugin eosio::history_api_plugin $REPLAY 2>>./nodes/00-eosio/stderr
# --replay-blockchain --hard-replay-blockchain 2>>./nodes/00-eosio/stderr
