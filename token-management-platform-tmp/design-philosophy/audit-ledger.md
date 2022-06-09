# Audit ledger

RIDDLE\&CODE's audit ledger provides a real-time, immutable record of all operations, including approved and rejected transactions, added or disabled policies and adding of trusted recipients. Clients can decrypt, collect and analyse all operational data processed within the platform and obtain real-time access to the respective audit logs. These data can then be shared with the respective auditors and regulatory bodies.

### Drawing more conclusions and answering more questions

This auditing system:

1. stores data necessary for auditing within a single system
2. collects more data than, for instance, the Bitcoin blockchain network
3. uses immutable blockchain to record these data
4. provides human-readable exporting documents and direct access to auditors.

The audit ledger is optimised for IoT applications and supports transaction throughput on par with global credit card networks. In addition, it uses a byzantine fault-tolerant consensus mechanism and is based on the BigchainDB ledger, offering low latency, powerful query features, decentralised control, immutable data storage and extensive built-in cryptocurrency support.



|                          BigchainDb                         |               RIDDLE\&CODE Audit Ledger              |
| :---------------------------------------------------------: | :--------------------------------------------------: |
|                 High throughput, low latency                |          Verifiable smart contract language          |
|               Byzantine fault tolerance (BFT)               |      Collective signature scheme implementation      |
|                      Real-time auditing                     |  Real-time auditing + human-readable audit documents |
| Decentralised—same copy of data is distributed to all nodes | Interoperability with sidechains and various ledgers |
|      Immutable metadata storage and proof of provenance     |     <p>Native support for multiple assets<br></p>    |
|                       GDPR compliance                       |          Oracle service executions (TEE/SEE)         |



### Storing and accessing data

Transactional data is stored on the corresponding DLTs and a Tendermint-based metadata ledger archiving JSON objects with associations between key derivations, coin addresses, transactions and their approval processes. Information about changes within the Policy Layer is also stored on the metadata ledger.

This metadata ledger is hosted as a private distributed network between the client and RIDDLE\&CODE. Data is AES-GCM encrypted with a blinding key that only the client or entities authorised by the client can access. The client can also share access to this data with an auditor.&#x20;

The following data is written on the metadata ledger:

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
* Transaction status: pending, settled, canceled or no\_funds

Since DLT cannot delete data, the data is blinded, and the information is AES encrypted. This allows the design of regulatory compliant processes to adhere to GDPR or general accounting requirements. RIDDLE\&CODE's solution manages the symmetric encryption keys and changes the blinding key every calendar year. An administrator can export these keys and destroy a previously used key after several years (e.g., ten years). Not having the key is thus equal to not having the data.

* Administrators can export an AES key for a given year so that they can analyse the data on devices external to the RIDDLE\&CODE's solution. It is up to the administrator to decide how to secure the key.
* Administrators can delete a key and, thereby, access to the data, making it unusable and unavailable.
* Administrators can access encrypted ledger data via an interface so that the data can be decrypted and analysed locally.

Real-time audit is translated into a JSON structure and provides signed, human-readable PDFs. Clients can retrieve these PDF documents and use them for audit and compliance management. Data resides at a server of the client and service provider.



### Powered by IPDB network

The audit layer is built upon and leverages the advantages of the public, federated and decentralised IPDB network. This decentralised network is operated by IPDB Foundation, a global non-profit foundation with headquarters in Berlin that fosters research into transparent governance. The Foundation is a main custodian of the BigchainDB stack, with a global membership base operating as nodes.

IPDB network enables:

1. **Multiple sovereign networks.** Customisable independent public or private IPDB networks can be set for multiple parties or single entity. Key features include flexible permissioning, low latency, Byzantine fault-tolerance and rich query features with MongoDB.
2. **Trust anchor.** A self-sovereign network needs authorities (e.g., governments) to issue credentials. Once trusted issuing authorities are set within BigchainDB, the protocol guarantees integrity with its on-chain governance mechanisms, such as the consensus algorithms.
3. **Transparent governance.** The IPDB foundation is governed by its general assembly and its elected board. Members that run the nodes govern the IPDB network. The protocol’s consensus mechanisms provide on-chain governance while the Foundation’s policies define off-chain governance.







