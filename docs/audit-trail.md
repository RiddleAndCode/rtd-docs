# Riddle&Code Audit ledger

## Summary

* Riddle&Code audit ledger provides a real-time, immutable record of all operations, including approved and rejected transactions, added or disabled policies and adding of trusted recipients.
* With the Riddle&Code ledger, the client can decrypt, collect and analyse all operational data processed within the Digital Asset Management Solution and obtain real-time access to the respective audit logs.
* The client receives a node that has all the capabilities of the Riddle&Code ledger and can be used to collect the data about all processed steps.
* The client can provide access to these operational data to the respective auditors and regulatory bodies.

## Reports based on real-time audit trails

Riddle&Code allows the Digital Asset Management Solution to use an auditing system that:
* stores data necessary for auditing within a single system;
* collects more data than, for instance, the Bitcoin blockchain network;
* uses immutable blockchain to record these data; and
* provides human-readable exporting documents and direct access to auditors.

Transactional data is stored on the corresponding DLTs and a Tendermint-based metadata ledger archiving JSON objects with associations between key derivations, coin addresses, transactions and their approval processes. In addition, information about changes to the Policy Layer is also stored on the metadata ledger.

This metadata ledger is hosted as a private distributed network between the client and RIDDLE&CODE. Data is AES-GCM encrypted with a blinding key that only the client or entities authorised by the client can access to see the audit metadata. For example, the client can also share access to this data with an auditor. The following data is written on the metadata ledger:
  * Account ID
  * Source coin address
  * Destination coin address
  * Amount
  * Fee
  * Fee estimation
  * Date and time
  * Public keys that approved or signed the transaction
  * Coin address forensics
  * Policy Layer result
  * Transaction status: pending, settled, canceled or no_funds

The implementation with Riddle&Code allows real-time audit that is translated into a JSON structure and provides signed, human-readable PDFs. Clients can retrieve these PDF documents and use them for audit and compliance management. Data resides at a server of the client and service provider.

## How is the data stored and accessed?

Since DLT cannot delete data, the data is blinded, and the information is AES encrypted. This allows the design of regulatory compliant processes to adhere to GDPR or general accounting requirements. The RIDDLE&CODE solution manages the symmetric encryption keys. By design, RIDDLE&CODE’s solution changes the blinding key every calendar year. An administrator can export these keys and destroy a previously used key after several years (e.g., ten years). Not having the key is thus equal to not having the data.
* Administrators can export an AES key for a given year so that they can analyse the data on devices external to the RIDDLE&CODE solution. It is up to the administrator to decide how to secure the key.
* Administrators can delete a key and, thereby, access to the data, making it unusable and unavailable.
* Administrators can access encrypted ledger data via an interface so that the data can be decrypted and analysed locally.

## Riddle&Code — Drawing more conclusions and answering more questions

Riddle&Code is a ledger optimised for IoT applications that supports transaction throughput on par with global credit card networks. The ledger uses a byzantine fault-tolerant consensus mechanism and is based on the BigchainDB ledger. It offers low latency, powerful query features, decentralised control, immutable data storage and extensive built-in cryptocurrency support.

IMAGE MISSING

The Riddle&Code Metadata Ledger operates on a globally distributed architecture to ensure the immutability and availability of all data stored and processed.
The ledger consists of a network of nodes deployed across all major regions.

|BigChainDB                          | by Riddle & Code                      |
|:----------------------------------------------------:|:-----------------------------------------------:                                        |
|High throughput, low latency                                | Verifiable smart contract language        |
|Byzantine fault tolerance (BFT)                             | Collective signature scheme implementation|
|Real-time auditing                                          | Human-readable audit documents            |
|Decentralised—same copy of data is distributed to all nodes | Interoperability with sidechains and various ledgers                                                                                          |
|Immutable metadata storage and proof of provenance          | Native support for multiple assets        |
|GDPR compliance                                             | Oracle service executions (TEE/SEE)       |


## IPDB network

Riddle&Code is built upon and leverages the advantages of the public, federated and decentralised IPDB network. This decentralised network is operated by IPDB Foundation, a global non-profit foundation with headquarters in Berlin that fosters research into transparent governance. The Foundation is a main custodian of the BigchainDB stack, with a global membership base operating as nodes.

>**Multiple sovereign Networks**
>Customisable independent public or private IPDB networks can be set up for multiple parties to run apps on, or even for a single entity to run their apps. Key features include flexible permissioning, low latency, Byzantine fault-tolerance, rich query features with MongoDB.

>**A trust anchor**
>A self-sovereign network needs authorities, such as governments to issue credentials. Once trusted issuing authorities are set up within BigchainDB, the protocol then guarantees their integrity with its on-chain governance mechanisms such as the consensus algorithms.

>**Transparent governance**
>The IPDB foundation is governed by its general assembly and its elected board. Members that run the nodes govern the IPDB network. The protocol’s consensus mechanisms provide on-chain governance, and the Foundation’s policies define off-chain governance.

## GDPR compliance

Riddle&Code is designed to be entirely GDPR compliant. The ledger itself does not contain arbitrary data hashes as part of transactions being signed off by public-private key pairs, and as such, it does not store any private data. Instead, the data itself is associated with a storage identifier and stored in a database featuring the needs of the data/use case. This can be an SQL (e.g., MariaDB), a NoSQL database (e.g., Cassandra and MongoDB) or decentralised file storage solutions (e.g., IPFS).
