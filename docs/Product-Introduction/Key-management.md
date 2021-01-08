# Key generation / key backup / disaster management

## Summary


* This document describes the process of secure and confidential key generation, backup and recovery.
* RIDDLE&CODE’s Digital Asset Management Solution ensures that the entire process, from key generation and backup to key recovery, is entirely managed by the client.
* All key management-related operations are performed within the Trusted Execution Environment (TEE), which provides hardware-enforced code and data-in-use isolation.
* The client is the only entity that can access the Trusted Execution Environment and, therefore, has full ownership and control over the keys. RIDDLE&CODE, as the solution provider, does not have access to the keys and related processes at any time.
* Keys are generated in a secure and auditable way without a possibility for others to intercept or access the keys.
* The secure key recovery process can be performed in the case of disaster.

Key management covers all aspects of the generation, securing, exchange/trading and revoking of keys. Since keys, private and public, act as a representation of indisputable identities, ownership of assets and proof-of-origin, key management needs to provide all aspects to:

* create keys in a secure and auditable way,
* manage keys and related processes within a trusted and confidential environment,
* perform value or metadata transactions to meet the throughput and frequency requirements of mature industries, and enable revocation/withdrawal and re-creation of keys in the framework of key restoring and disaster management.

## Key generation

![Key generation flow Diagram](assets/Keygenflow.png)

*Fig 1: Key generation flow diagram*

1. To initiate the creation of the master key, a user (administrator) needs to trigger the generation of a random number via the web interface.
2. The random number is created inside HSM and then exported to the Confidential Keystore via hardened, secure communication channels.
3. The Confidential Keystore generates a mnemonic phrase and a master key within the Trusted Execution Environment (TEE). Additional addresses are then derived from the master key within TEE.
4. The mnemonic phrase is passed through the backend to the web interface.
5. The phrase is displayed on the web interface to the user.
6. Finally, the user stores the mnemonic phrase on a steel plate.

![Key Backup flow Diagram](assets/keybackup.png)

*Fig 2. Key backup flow diagram (high-level overview)*

Following the key generation, the key derivation path is defined according to the BIP-32, BIP-39, BIP-44 and additional applicable cryptocurrency standards. The BIP-32 protocol can turn the seed into a so-called mnemonic phrase that can be backed up according to a disaster recovery process.

## Security measures during the key generation process

The following safety and control measures are in place during the key generation process:
* **Confidential computing:**
  - Trusted Execution Environment ensures encryption of data in transit, while being processed and at rest.
  - Decentralised attestation enclaves and identities support a hardened authenticity and integrity verification process.
  - Secure and confidential execution within untrusted environments. (RIDDLE&CODE does not have any access to sensitive, confidential or encrypted data.)
  - Audit logs are created for all transactions and changes. Due to the integrity and authenticity of the solution, it can be guaranteed that these events are always recorded in a federated audit ledger.

* Audit logs for role-based access control and change management:
  - Physical protection of machines (TEE, HSM) via fingerprint readers, key and access control at data-center compliant with ISO-27001 standard.

* Hardened communication systems.

## The trusted source of entropy

The generation of keys is initiated with the following trusted independent source of randomness:

* The implemented hybrid random number generator complies with DRG.4 requirements, the highest security level for DRG. A physical quantum noise-based random number generator of the highest security class PTG.2 is used as the entropy source for seeding this deterministic random number generator.
* All TEE enclaves are also protected by being operated within a secure container environment called SCONE, enabling the confidential computing of container and host programs using dedicated TEEs
* The confidential computing setup supports Kubernetes, Docker and AZURE confidential computing, native LINUX hosts and Windows 10 Hyper V. This forms the basis of the Confidential Keystore as a Service (CKaaS) and offers trusted and confidential computing in combination with a classical HSM (e.g., SecuroSys or Utimaco) for managing and safekeeping of keys.
* Access to the HSM and CKaaS is defined by the role-based access and control system (RBAC) and enforced by hardware wallets (authentication & identity) and the Policy Layer (control). All processes are logged within classical Syslog-files and attested and stored to Riddle&Code ledger.
* Riddle&Code audit ledger provides real time and immutable record of all operations, including approved and rejected transactions, adding or disabling of policies and adding of trusted recipients. With Riddle&Code ledger, the client can decrypt, collect and analyse operational data processed within Digital Asset Management Solution and obtain real-time access to the respective audit logs. (link to Riddle&Code doc)

## Key backup and verification

After the key is created, the backup mnemonic phrase is disclosed to an administrator on the web interface. The mnemonic phrase consists of twenty-four words and is crucial to the backup and disaster recovery process for the entire Digital Asset Management Solution (TMP). It is used to restore keys in the case of loss or when a new initialisation of wallets is required. Due to its critical role in key management, the secret has to be safeguarded from malicious users. Here is RIDDLE&CODE’s recommendation for safely storing the phrase in the initialisation phase:

1. The user reads the phrase from the web interface.
2. Next, the user writes down the mnemonic phrase on a steel plate and closes the plate.
3. The mnemonic phrase is stored in an off-premise vault.
This process is called a key ceremony.

**NOTE:** The backup of the mnemonic phrase is available only once, during the key ceremony. The mnemonic phrase cannot be retrieved later.

Once the mnemonic phrase is safely stored, it is time to perform the verification of the backup process. This process allows the client to verify the integrity of the mnemonic phrase and ensures that the keys being created by this mnemonic phrase equal the keys that are already in the system.

The backup process is done during the key ceremony:
1. The user enters the parts of the mnemonic phrase to the respective web interface,
2. The process continues until the entire mnemonic phrase is entered,
3. The entered mnemonic phrase is then hashed and verified against the mnemonic phrase stored in the CKaaS.

If the verification is successful, the backup mnemonic phrase can be trusted. The key ceremony is, therefore, completed.

## Disaster management

Digital Asset Management Solution provides business continuity by ensuring that even in the case of a disaster scenario, such as bankruptcy or functional failure of RIDDLE&CODE, the keys are always under full control of the client.

## Key recovery process

Key recovery can be triggered via the user interface, where the user will be led through the entire process, step-by-step:

1. The key recovery process starts by clicking the **Recover your keys** button on the web interface.
2. Twenty-four fields are displayed on the web interface.
3. The user then enters the mnemonic backup to the web interface and performs verification.
4. According to a strict protocol, part of the mnemonic phrase is re-injected into the Confidential Keystore, which ensures that an individual operator never knows the entire mnemonic phrase.
With this, the process is completed, and address generation and transaction signing capabilities per client are available.
