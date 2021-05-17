# Getting Started Guide


Confidential Key Management allows secure and flexible storing and managing of keys. The keys, which are based on elliptic-curve cryptography, can be used to interact with DLTs/blockchains. Confidential Key Management applies the concept of [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) to derive hardened keys from a master seed/base key. Different types of DLT are supported as described by [Satoshilabs](https://github.com/satoshilabs/slips/blob/master/slip-0044.md).

This **Getting Started Guide** covers the steps necessary to set up and start operating the service.


The steps are as follows:

* Set up secure communication. Ensure that keys are protected with 2-way TLS communication, with client and server authenticating each other’s identities.
* Set up the master key/seed with the help of the [API](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Master%20Key/create_master_key).
* Prepare for disaster recovery by backing up the mnemonic phrase. (See [Key Ceremony](CKM-Key-ceremony.md))
* Create at least one account (AccountID) using the API.
* Request a coin address and/or sign a transaction with the account’s keys.

The following sections provide instruction on how to perform the above steps.


## 2-way TLS connection

Confidential Key Management service is secured through 2-way TLS connection.

In order to access the service, the following steps are required:

* Certification authority (CA) defined by the client needs to be injected into the service.
* The interaction key pair has to be signed by the CA.
* The service will then verify if the request was signed by the key that has been previously approved by the client CA.
* The email with the client’s CA needs to be sent to RIDDLE&CODE via **support@riddleandcode.com**.

**Note:** Guidelines for creating the CA and set of keys can be found at[keymanagement cmd-line tool](https://github.com/RiddleAndCode/keymanagement-cli/blob/master/docs/generate-certificates.md).


### Setting up 2-way TLS connection via Chrome

The steps are as follows:

* Create a PKCS#12 file by using the client’s key and certificate: ```openssl pkcs12 -export -out client.p12 -inkey client-key.pem -in client-cert.pem ```
* Add the PKCS#12 file to Google Chrome.
* Go to Settings —> Security —> Manage certificates —> Your certificates —> Import
* Select the previously created .p12 file.
* Visit the service page and select the imported certificate.



## Accounts

The concept of [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) is used throughout Confidential Key Management service. Hardened derivation paths are used so that the valid range for AccountIDs is defined from 0x0000 0000 to 0x7FFF FFFF.

Accounts can be randomly [created](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Accounts/create_account) or [defined](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Accounts/recover_account) to enable recovery scenarios. They can also be [disabled and enabled](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Accounts/change_status).



## Coin addresses and transaction signing

Deriving addresses with [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) requires the following set of information:

* Coin type,
* Account,
* Change, and
* Index

The purpose is defined to be 44'. The calls to [get a coin address](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Coin%20Addresses/get_coinaddress) for a given BIP44 path and to [sign transactions](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Coin%20Addresses/sign_transaction_r3c) are defined by the supported [API](https://app.swaggerhub.com/apis/riddleandcode/key-management).


This concludes the **Getting Started Guide**. If there are any questions or concerns, please contact **support@riddleandcode.com**.
