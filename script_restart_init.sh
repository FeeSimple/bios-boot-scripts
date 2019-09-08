killall keosd nodeos || true
rm -rf /root/bios-boot-scripts/wallet
mkdir -p /root/bios-boot-scripts/wallet
/usr/bin/keosd --unlock-timeout 999999999 --http-server-address 127.0.0.1:6666 --wallet-dir /root/bios-boot-scripts/wallet
/usr/bin/cleos --url http://127.0.0.1:8000 wallet create --to-console 
/usr/bin/cleos --url http://127.0.0.1:8000 wallet import --private-key 5K463ynhZoCDDa4RDcr63cUwWLTnKqmdcoTKTHBjqoKfv4u5V7p
/usr/bin/cleos --url http://127.0.0.1:8000 wallet import --private-key 5K6LU8aVpBq9vJsnpCvaHCcyYwzPPKXfDdyefYyAMMs3Qy42fUr
/usr/bin/cleos --url http://127.0.0.1:8000 wallet import --private-key 5KdRpt1juJfbPEryZsQYxyNxSTkXTdqEiL4Yx9cAjdgApt4ANce
/usr/bin/cleos --url http://127.0.0.1:8000 wallet import --private-key 5JRMbcnc35NkvxKTZUnoe3W4ENQCjhMUFwjN5jQmAqN9D7N6y3N
/usr/bin/cleos --url http://127.0.0.1:8000 wallet import --private-key 5HqyipkJSm5fwYhbhGC3vmmoBwabtgJSPecnvmN2mMrCTQfWBSS
/usr/bin/cleos --url http://127.0.0.1:8000 wallet import --private-key 5KLGj1HGRWbk5xNmoKfrcrQHXvcVJBPdAckoiJgFftXSJjLPp7b
/usr/bin/cleos --url http://127.0.0.1:8000 wallet import --private-key 5K6qk1KaCYYWX86UhAfUsbMwhGPUqrqHrZEQDjs9ekP5j6LgHUu

