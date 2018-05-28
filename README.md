# Bios Boot Tutorial

According to the bios boot tutorial (https://github.com/EOSIO/eos/tree/master/tutorials/bios-boot-tutorial),
some extra scripts are created for easy usage.

Please copy these scripts into the folder `$EOS_ROOT_DIR/tutorials/bios-boot-tutorial` from which the scripts can be executed.

`cleanup.sh` script performs cleanup operation.
`script_bios_boot.sh` script executes the bios boot sequence with custom configuration.

The final result is that a set of block producer nodes and user nodes is
created. A subset of block producer nodes is then randomly voted as EBP (Elected Block Producer).
Only one of the EBPs is in turn producing blocks for totally 12 times.

The log output is redirected to the file `my_log.txt` from which the passphrase
of the created wallet can be saved.
