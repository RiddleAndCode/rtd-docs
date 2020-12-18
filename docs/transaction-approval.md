# Transaction authorisation, approval and signing process

## Summary

This document describes the process of transaction authorisation, approval and signing:

1. To create a transaction, the client needs to access the user interface. From there, the transaction can be created in one of two ways:
  - Manually by filling out the fields on the user interface, such as recipient, amount and currency; or
  - The raw transaction can be forwarded through the client’s order system to the TMP user interface via API (bespoke development upon client request).
2. Through the Policy Layer, the client can define which and how many Approval Devices are required to authorise a transaction.
3. The Policy Layer matches the raw transaction against the previously set rules and shares the raw transaction with the operators to confirm the transaction with the Approval Devices.
4. If the transaction adheres to all rules, the Transaction Logic forwards the approved transaction to the Confidential Keystore for final signing.
5. Once signed, the transaction is broadcasted to the respective blockchain.

## Approval Devices

The client is provided a set of RIDDLE&CODE’s Approval Devices, which manage key pairs, authenticate the users and approve transactions.  

Each Approval Device hosts a dedicated Secure Element, a part of RIDDLE&CODE’s “Built for Blockchain” product range. The Secure Element represents a dedicated crypto chip that securely stores the unique digital identity on any given device through the combination of hardware and software. The identities, stored within Secure Elements, are also attested to the Trusted Execution Environment (TEE) of the client’s TMP environment.

The decision regarding how many approvals are required relies on the configuration of the Policy Layer, running within a Trusted Execution Environment. Based on the client’s Policy Layer rules, a set of Approval Devices authorises the signing of the transaction via the Confidential Keystore. To guarantee that only authorised Approval Devices are operating with each transaction, the TEE and Policy Layer validate these identities via hardened cryptographic communication.

## Approval process

The approval process ensures that the user operating the Approval Device acknowledges all aspects of the transactions, from amount and fees to inputs. The entire process is executed and secured by a Trusted Execution Environment (TEE).

Devices are connected to the user’s computer via USB. Communication between the Approval Devices and the Trusted Execution Environment is initiated via the identities of the Secure Elements and encrypted via Ephemeral ECDH.

The Token Management Platform retrieves all information from the DLT to craft a transaction according to the user request. The unsigned transaction is displayed on the Approval Device for verification of all inputs. After all required policies are accepted, the user needs to approve each step of the transaction via the Approval Device.

## Signing process

The unsigned transaction needs to be validated by the Policy Layer. The Policy Layer validates transaction requests against the following information:
* UTXOs verification
* confirmation that the transaction is funded
* AML-related checks
* consistency checks
* compliance with the rules and roles set by the client. For example, transactions above a certain threshold value require five Approval Devices to authorise a transaction, but small value transactions require only two Approval Devices for confirmation.

After the Policy Layer completes the validation, the operators approve the transaction on their Approval Devices and initiate the signing process. The approved transaction is being signed by the Confidential Keystore. The signed transaction is then broadcasted to the respective DLT.
