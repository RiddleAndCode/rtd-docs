#Signing 

- [Signing](#signing)
  - [Shamir secret sharing](#shamir)
  - [Applications](#applications)
  - [Multiparty computation](#multi-pary-computation)
      - [Database](#database)
      - [Currencies:](#currencies)
      - [IMPORTANT: To apply changes, the trusted node executable has to be restarted.](#important-to-apply-changes-the-trusted-node-executable-has-to-be-restarted)
  - [PIN Change](#pin-change)
  - [Creation of Shamir Family](#creation-of-shamir-family)
  - [Precalculation of accounts](#precalculation-of-accounts)
  - [Update addresses](#update-addresses)
  - [Transaction](#transaction)
  - [Additional Information](#additional-information)
    - [Confirmation on hardware devices: Yes or No](#confirmation-on-hardware-devices-yes-or-no)
    - [Insert PIN](#insert-pin)
    - [Check device identiy](#check-device-identiy)
    - [Account Management](#account-management)

## Shamir Secret sharing

Secret sharing refers to methods for distributing a secret amongst a group of participants, each of whom is allocated a share of the secret. The secret can be reconstructed only when a sufficient number, of possibly different types, of shares are combined together; individual shares are of no use on their own.

Shamir's Secret Sharing is an algorithm in cryptography created by Adi Shamir. It is a form of secret sharing, where a secret is divided into parts, giving each participant its own unique part.\
Depending on the defined scheme a wide array of combinations is possible. To reconstruct the original secret, a minimum number of parts is required. In the threshold scheme this number is less than the total number of parts. Otherwise all participants are needed to reconstruct the original secret.\
\
These allows for a flexibel set up of shared secrets based upon the requirements of the use case. 
```
E.G.
2 out of 3 
3 out of 5
6 out of 7
10 out of 15 
```
Secret sharing schemes are ideal for storing information that is highly sensitive and highly important. Examples include: encryption keys, missile launch codes, and numbered bank accounts. Each of these pieces of information must be kept highly confidential, as their exposure could be disastrous, however, it is also critical that they should not be lost. Traditional methods for encryption are ill-suited for simultaneously achieving high levels of confidentiality and reliability. This is because when storing the encryption key, one must choose between keeping a single copy of the key in one location for maximum secrecy, or keeping multiple copies of the key in different locations for greater reliability. Increasing reliability of the key by storing multiple copies lowers confidentiality by creating additional attack vectors; there are more opportunities for a copy to fall into the wrong hands. Secret sharing schemes address this problem, and allow arbitrarily high levels of confidentiality and reliability to be achieved.


---
## Applications
Using Shamir secret to sign transactions, RIDDLE&CODE mitigates these shortcomings and introduces real multi-signature (n out of m) for every cryptocurrency. This is achieved by leveraging a true multi-party computational approach (MPC) via our multi-device solution. In contrast to traditional multi-sig solutions that only require a number of n people to sign a transaction, Shamir signature increases security by dividing a secret (the signing secret) into shares, giving each signee its own unique part. 

A transaction can only be signed if the predetermined number of signees contribute their Shamir secret share. The final signing key for the transaction is generated out of these multiple signee shares. This method prevents that the signing secret is permanently stored on a single device and therefore introduces a design that avoids a single point of failure. Beyond Shamir secret, we are in the process of introducing new crypto chips and software to extend the number of supported algorithms (e.g. NIST-P256K1, Schnorr signatures, ED-25519).


## Multi Party computing device - the Signing Process

Whenever a transaction is being created by an operator the following steps apply: 

![alt text](https://github.com/RiddleAndCode/trusted-node-manuals/blob/master/assets/Step%20by%20Step%20Process.png "Signing architecture")

1. Via the web interface transactions are prepared and initiated 

2. The trusted node initiates the related raw transaction with pending signatures and sends it to the signature devices for approval/signing. 

3. Each signature device signs the raw transaction with its Shamir's secret slice. The number of signature devices is configurable (m of n) via the web interface. 

4. The (optional) master signature device collects and decrypts the Shamir signatures, recovers the master secret, signs the transaction and sends it back to the trusted node. After that the master secret is zeroized.

5. The trusted node broadcasts the signed transaction to the target blockchain/DLT
