# Backup

The Digital Asset Management solution by RIDDLE&CODE stores data in the following locations:
1. Database (mariadb, postgresql, oracle)
2. Encrypted Enclaves
3. Settings file
4. Secret Data on the Signature Devices

A detailed overview on the specifics of these storages follows below.

## Database

The data within the data base is currently to achieve the following functions and features:
1. Association of accounts to highly determiinstic key derivation paths.
2. Supported currencies.
3. Audit log
4. Whitelist management

It is up to the user to define self hosted database so that this can be intgrated into a backup plan.

## Encrypted Enclaves

The policies of the policy management are stored within the encrypted enclaves and are currently not backed up. A mechanism to do so will follow soon.

## Settings file

The settings file comes with the hardware and is most likely modified durig the installation. The users has full control over this file and is responsible to back up this file.

## Secret Data on the Signature Devices

The secrets on the Signature Devices are not stored anywhere else. Devices cannot be backed up. Instead the backup of the mnemonic phrase can be used to reset the devices so that they can be used as before and are able to reconstruct all private keys.