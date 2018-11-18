# Bios Boot Scripts for Testnet

According to the bios boot tutorial (https://github.com/EOSIO/eos/tree/master/tutorials/bios-boot-tutorial),
extra scripts have been created for easy usage.

```
Currently, only this revision of EOS software (master branch) works: a97a49a0dd4f5051dc7de1de4bc654fedf49cadf
```

Please copy these scripts into the folder `$EOS_ROOT_DIR/tutorials/bios-boot-tutorial` from which the scripts can be executed.

* `cleanup.sh` script performs cleanup operation.
* `script_bios_boot.sh` script executes the bios boot sequence with custom configuration.

A set of block producer nodes and user nodes is created. A subset of block producer nodes is then randomly voted as EBP (Elected Block Producer). Only one of the EBPs is in turn producing blocks for total of 12 times.

The log output is redirected to the file `my_log.txt` from which the passphrase of the created wallet can be saved.

`For this kind of testnet, the deployment of block producers is controlled by
a central host whereas for the real-world mainnet, the block producers are
distributed.`

# Common errors

### Execution of the script bios-boot-tutorial.py is hung up

Check the log output of `eosio`:

`/eos/tutorials/bios-boot-tutorial# tail -f nodes/00-eosio/stderr`

```
1107000ms thread-0   producer_plugin.cpp:1073      produce_block        ] Produced block 000000031aa4d25b... #3 @ 2018-06-30T06:18:27.000 signed by eosio [trxs: 0, lib: 2, confirmed: 0]
1107000ms thread-0   producer_plugin.cpp:757       start_block          ] Not producing block because the irreversible block is too old [age:10347507s, max:9999999s]
1108975ms thread-0   http_plugin.cpp:396           handle_exception     ] FC Exception encountered while processing chain.push_transaction: 3080006 deadline_exception: transaction took too long
```

If the error is `Not producing block because the irreversible block is too
old`, then a possible work-around is to change the value of `--max-irreversible-block-age` in `bios-boot-tutorial.py` to `-1`.
This will make the `max-irreversible-block-age` value to unlimited

