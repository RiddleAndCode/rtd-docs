# Key and identity management

Key management covers all aspects of generating, securing, exchanging/trading and revoking keys. Since keys, private and public, act as a representation of indisputable identities, ownership of assets and proof-of-origin, key management needs to provide all aspects to:

* create keys in a secure and auditable way
* manage keys and related processes within a trusted and confidential environment
* perform value or metadata transactions to meet the throughput and frequency requirements of mature industries
* enable revocation/withdrawal and re-creation of keys in the framework of key restoring and disaster management.

RIDDLE\&CODE ensures that all key-related processes, from generation and backup to recovery, are entirely managed by the client. RIDDLE\&CODE, as the solution provider, does not have access to the keys and related processes at any time. In addition, all key-related operations are performed within the Trusted Execution Environment (TEE), which provides hardware-enforced code and data-in-use isolation. The client is the only entity that can access the Trusted Execution Environment and, therefore, has full ownership and control over the keys.



The steps for creating the master key are as follows:

1. User (administrator) triggers the key generation process.
2. A random number is created inside the Confidential Keystore.
3. Confidential Keystore creates the mnemonic phrase.
4. Following the key generation, derivation path **** of the key is defined according to the BIP-32, BIP-39, BIP-44 and additional applicable cryptocurrency standards.
5. The BIP-32 protocol can turn the seed into a so-called mnemonic phrase that can be backed up according to a disaster recovery process.
6. The phrase is exported via the API for the purpose of disaster recovery.
7. User then stores the mnemonic phrase on steel plates (see: [Enterprise key ceremony](broken-reference)).



The following safety and control measures are in place during the key generation process:

* Trusted Execution Environment ensures encryption of data in transit, while being processed and at rest.
* Decentralised attestation enclaves and identities support a hardened authenticity and integrity verification process.
* Secure and confidential execution within untrusted environments (RIDDLE\&CODE does not have any access to sensitive, confidential or encrypted data).
* Audit logs are created for all transactions and changes. It can be guaranteed that these events are always recorded in a federated audit ledger.
* Physical protection of machines via fingerprint readers, key and access control at data-centre that is compliant with ISO-27001 standard.

### Key backup and verification

Back to key generation.

After the key is created, the backup mnemonic phrase is disclosed on the Approval Device (the one that has been used to issue the secure seed generation). Mnemonic phrase consists of twenty-four words and is crucial to the backup and disaster recovery process. It is used to restore keys in the case of loss or when a new initialisation of wallets is required. Here is RIDDLE\&CODE’s recommendation for safely storing the phrase:

1. User reads the phrase from Approval Device's screen.
2. Next, the user writes down the mnemonic phrase on a steel plate and closes the plate.
3. User stores the mnemonic phrase in an off-premise vault.

This process is called a key ceremony.

**NOTE:** The backup of the mnemonic phrase is available only once, during the key ceremony. The mnemonic phrase cannot be retrieved later.

Once the mnemonic phrase is safely stored, it is time to perform the verification of the backup process. This process allows the client to verify the integrity of the mnemonic phrase and ensures that the keys being created by this mnemonic phrase equal the keys that are already in the system.

The backup process is done during the key ceremony:

1. User verifies the parts of the mnemonic phrase on the Approval Device screen.
2. The process continues until the mnemonic phrase is verified.

If the verification is successful, the backup mnemonic phrase can be trusted. The key ceremony is, therefore, completed.

### Key recovery process

RIDDLE\&CODE provides business continuity by ensuring that even in the case of a disaster scenario, such as bankruptcy or functional failure, the keys are always under full control of the client.

Key recovery can be triggered via the user interface, where the user will be led through the entire process, step-by-step:

1. The key recovery process starts by clicking the **Recover your keys** button on the interface.
2. Twenty-four fields are displayed.
3. User then enters the mnemonic backup and performs verification.
4. According to a strict protocol, part of the mnemonic phrase is re-injected into the Confidential Keystore, which ensures that an individual operator never knows the entire mnemonic phrase.

With this, the process is completed, and address generation and transaction signing capabilities per client are available.
