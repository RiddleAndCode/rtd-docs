# Confidential Key Management Manual

Confidential Key Management is all about storing and manageming your keys in a secure way. The keys can be used to interact with DLTs/blockchains in general and are based upon Eliptic Curve cryptography.

In general, the Confidential Key Management applies the concept of [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) to derive hardened keys from a given master seed/base key. Different types of DLT are supported as described by [Satoshilabs](https://github.com/satoshilabs/slips/blob/master/slip-0044.md).

In theory all DLT transactions can be signed. At the same time, DLT support needs to be added explicitly as the transaction creation and signing process depends on the DLT of choice.


## Getting Started

To start working with Confidential Key Management a secure connection is to be set up. The security of the keys are - amongst others - protected by only allowing connections secured by 2-Way TLS communication. With the client and the server authenticating each others identities.

Having the secure communication set up, the following steps need to be performed to prepare the system to operate:

1) Setting up the master key/seed with help of the [API](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Master%20Key/create_master_key)
2) Backup the mnemonic phrase to prepare for disaster recovery (The topic of key ceremeonies is covered in a dedicated section at [Key Ceremony](CKM-Key-ceremony.md))
3) Create at least one account (AccountID) via the API
4) Request the coin address and or create and sign a transaction with the keys of the account.

The following sections will give an overview about this.


## 2-Way TLS for Authentication
The service is secured via mutual tls. This means, in order to request the service a a CA certificated defined by the client needs to be injected into the service. 
The actuall interaction key pair has to be signed by the CA and is used to sign the communication between the service and the client.
The Confidential Key Management service will then verify if the requests got signed by a key that has been previously approved by the client CA.

Please send an email with the client CA to RIDDLE&CODE via the support email address.

### Generating a CA and a signed set of keys

A manual on how to create a CA and a set of keys can be found at the RIDDLE&CODE [keymanagement cmd-line tool](https://github.com/RiddleAndCode/keymanagement-cli/blob/master/docs/generate-certificates.md).


### Setting up 2-Way TLS via Chrome

Use 2-Way tls via Chrome
1) Create a PKCS#12 file by using key and certificate of the client
    ```openssl pkcs12 -export -out client.p12 -inkey client-key.pem -in client-cert.pem ```
2) Add the PKCS#12 file to Google Chrome
a) Go to Settings --> Security --> Manage certificates --> Your certificates --> Import
b) Select the previous created .p12 file
3) Visit the service page and select the imported certificate

The service can be used now.


## Accounts

The concept of [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) is used throughout the complete solution. Hardened derivation paths are used so that the valid range for AccountIDs is defined from 0x0000 0000 to 0x7FFF FFFF. 

Accounts can be randomly [created](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Accounts/create_account) or [defined](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Accounts/recover_account) to enable recovery scenarios.

Accounts can be [disabled and enabled](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Accounts/change_status) again, too.

## Coin addresses and TX signing

Deriving addresses with [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) requires the defintion the following set of information

* coin type
* account 
* change
* index 

the purpose is defined to be 44'. The calls to [get a coinaddresse](https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Coin%20Addresses/get_coinaddress) for a given BIP44 path and to [sign transactions] (https://app.swaggerhub.com/apis/riddleandcode/key-management/1.0.8#/Coin%20Addresses/sign_transaction_r3c) are defined by the supported [API](https://app.swaggerhub.com/apis/riddleandcode/key-management).