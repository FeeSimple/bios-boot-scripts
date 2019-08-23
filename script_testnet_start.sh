cd ~/eos-release1.1/tutorials/bios-boot-tutorial
pm2 start script_bios_boot.sh

echo 'Waiting ...'
sleep 2m

cd ~/eos-tracker/nodeos/client_node_connect_to_testnet_mongo
pm2 start script_client_nodeos.sh 
