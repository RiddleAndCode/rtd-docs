# Design philosophy

The multifunctional Token Management Platform allows the issuing of tokens, end-to-end trading, settlement and custody services with high levels of security, auditability and regulatory compliance.

The main components of this tokenization ecosystem are:
1. Key and identity management
2. Trusted Execution Environment (TEE)
3. Distributed ledger infrastructure
4. Policy Layer
5. Interoperability and regulatory compliance (APIs)

The following section describes each of these components.


## Key and identity management
Key management covers all aspects of generating, securing, exchanging/trading and revoking keys.

Since keys, private and public, act as a representation of indisputable identities, ownership of assets and proof-of-origin, a tokenization platform needs to provide all aspects to:
* create keys in a secure and auditable way,
* manage keys and related processes within a trusted and confidential environment,
* perform value or metadata transactions in a manner that meets the throughput and frequency requirements of mature industries, and
* enable revocation/withdrawal and re-creation of keys in the framework of key restoring and disaster management.


### Key generation
Key generation is performed in a secure and auditable way with no possibility for others to intercept or access the keys.
The keys are generated within HSM and then exported to the Confidential Keystore via hardened, secure communication channels. A master key is then generated within the Trusted Execution Environment (TEE), which ensures the encryption of data in transit, while being processed and at rest.
Additional addresses are then derived from the master key within TEE. Following key generation, the key derivation path is defined according to the BIP-32, BIP-39, BIP-44 and additional applicable cryptocurrency standards. The BIP-32 protocol can turn the seed into a so-called mnemonic phrase that can be backed up according to a disaster recovery process.

### Once generated, keys need to be stored
Once generated, keys are encrypted and stored to prevent malicious use. There are different approaches when it comes to ensuring that keys are securely stored.

In order to provide more accessibility and liquidity of assets, keys are often centralised in so-called hot wallets, from which all transactions either originate or depart. The advantage of these systems is that thousands of transactions per day can be carried out in dozens of digital currencies. This can be done in either an automated or, if necessary (depending on the total value of the transaction), a manual setup.

However, the disadvantage of these systems is a lack of security and transparency. Most major digital asset-related breaches are hot wallet breaches. In addition, the administration of digital currencies via classic databases and hot wallets also lacks regulatory suitability. The actual change of ownership isn’t documented in the blockchain. Instead, it’s stored and managed in classical databases by the exchanges for as long as the assets (keys) remain in custody.

Another way is to encrypt keys within HSMs to ensure that the keys are stored offline and never exposed to any malicious attack. Keys within an HSM can be decrypted only when predefined conditions are met. Yet, HSMs are designed to sign transactions on command, and, as such, they can be compelled to sign malicious transactions.

If HSMs have operational vulnerabilities and a hot wallet comes with security flaws, then how can keys be securely stored?
RIDDLE&CODE has developed its own solution to enable the combination of these techniques and has added the required orchestration and confidentiality.
The solution, named the Policy Gateway, combines flexibility and business logic with the protective power of hardware security models.

## Trusted Execution Environment (TEE)
RIDDLE&CODE adopted the concept of confidential computing (CC) to protect its cloud services and data-in-use through isolating computations to a hardware-based Trusted Execution Environment (TEE).

This represents a secure location, isolated from the regular processing environment where the operating system and applications run. CC safeguards the confidentiality of data/code, protects its integrity and prevents unauthorised access to confidential data and malicious interference.

Without confidential computing, the cryptographic keys could be revoked, and the ownership of assets could become corrupted. Confidential computing can also achieve data compliance with legislation, such as GDPR or financial regulatory provisions. Finally, the most important aspect of RIDDLE&CODE’s approach to confidential computing is its implementation in a way that doesn’t increase the complexity for the user and, at the same time, remains cost-sensitive.

## Distributed ledger infrastructure
Despite the groundbreaking improvements of distributed ledgers (immutability, distributed nature, consensus mechanisms, etc.) one of the fundamental issues of current blockchains is low throughput. This limitation has been a major impediment for an industry where scalability is a prerequisite to execute and perform thousands of transactions per second.
The results of low scalability are congested networks, high network fees, pending transactions and long confirmation times. Hence, the ledger infrastructure is not fit to cope with the vast number of transactions that can be expected once industry-wide adoption takes place. Just imagine all cars using car wallets and creating millions of transactions over the course of the day.  

It was the goal of RIDDLE&CODE to create a ledger network that is capable of coping with the requirements of future tokenization and the high load of transactions. BigchainDB is a ledger optimised for IoT applications that supports transaction throughput on par with global credit card networks. The ledger uses a proof-of-stake consensus mechanism and offers low latency, powerful query features, decentralised control, immutable data storage and extensive built-in cryptocurrency support.

The ledger is derived from IPDB and designed in such a way that it is completely GDPR compliant. The ledger itself contains no arbitrary data hashes as part of transactions that are signed off by public/private key pairs. Instead, it associates a piece of data with a storage identifier.

BigchainDB solves some of the fundamental weaknesses of existing ledgers by:
* achieving interoperability on the ‘infrastructure’ layer,
* managing metadata ‘roaming,’
* creating the right environment for business models to appear,
* supporting high enough performance/throughput to reach scale, and
* supporting offline/decentralised termination of transactions.

In combination with RIDDLE&CODE’s identity management/wallet solutions, confidential computing approach and interoperability with sidechains like Liquid, BigchainDB acts like an ‘engine’ that supports all aspects of tokenization, including the creation and issuance of tokens, management and trading, as well as burning the tokens in a fashion that is auditable and compliant with regulatory provisions.


## Policy layer
The Policy Layer is a set of rules that performs and logs all processes preceding and following transaction authentication. It verifies that the defined roles and rules are imposed and specifies the access rights to the platform and any of its functionalities.

#### CHALLENGE 1:
Fullfilling regulatory criteria for transparency and compliance.

#### POLICY LAYER:
Verifies that the defined roles and rules are imposed and followed in a cryptographically secured way. The Policy Layer provides trails of all conducted operations, including details like which changes have been made, who made those changes, who signed the transaction, the place and time, the amount, the fees, the accounts involved, etc.
With policies that are fully auditable and written in a human-readable language, audit trails become the trusted source, validating that all operations were done in compliance with regulatory frameworks.


#### CHALLENGE 2:
Ensuring that transaction governance is secure and immutable.

#### POLICY LAYER:
Allows clients to set role-based access control in the operational processes and define the access rights to the Token Management Platform and any of its functionalities. For example, separation of roles can be among administrators and operators. Administrators are the only ones who can create and customise transaction rules, ensuring that no circumvention is possible.


#### CHALLENGE 3:
Preventing internal misuse.

#### POLICY LAYER:
Allows defining of approval rules for signing transactions according to different parameters. Every new transaction can be executed only if it complies with previously set rules. If any of the rules are not followed, the Policy Layer declines the approval and rejects the transaction. This enables clients to approve and execute transactions following tailor-made, cryptographically secured approval rules and prevents internal misuse.


### See it in action

1. **Define roles.** Client sets the segregation of roles between departments and their roles in the operations. For example, an administrator can pick the approval group and pre-approve transactions based on the involved users.

2. **Set rules.** Policies are defined by rules and can be customised only by the administrators utilising the multiparty computation security concept. The rules can be based on different factors, including the number of transfers, signatures, maximum amount per transaction, per-period limit, etc.

3. **Sign transaction.** Every new transaction is filtered through the Policy Layer, which matches the requirements for the transactions with the existing policies. If all rules applicable for the transaction are adhered to, the Policy Layer accepts and executes the transaction.


### Examples of policies

**Policy** | **Description**
--- | --- | ---
**Threshold** | Defines the maximum amount allowed per transaction for a certain user group. For example, the operators can approve an amount below 50,000 euros, but transactions above this threshold require additional approval. |
**Authorised users per amount** | Defines user groups that are allowed to participate in transaction approvals. |



## Interoperability and legal/regulatory compliance

Decentralised systems require a high degree of interoperability of the various subsystems. In the future, many different blockchain networks will need to communicate and exchange data to form more complex and powerful networks.

In the domain of identity, interoperability is achieved by a broad range of crypto chips, HW/SW deployment options and support of the majority of relevant cryptographic algorithms. In the realm of confidential computing, this is achieved by combining certified and/or compliant technology with the ability to interact with other components in an agile way.

The BigchainDB ledger establishes the interoperability with other networks and technologies via peg-in/peg-out mechanisms. This allows the ledger to focus on its strength when it comes to storing identities and metadata while performing other functions via interoperability with specific sidechains, such as Liquid. In addition, a severe regime of recurring technical and process audits of our technology and the implementation of online audit trails via BigchainDB renders the Token Management Platform compliant with regulatory provisions.
