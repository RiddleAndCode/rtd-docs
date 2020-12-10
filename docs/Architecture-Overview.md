# Token Management Platform


#### Summary:

The Digital Asset Management Solution, a powerful yet simple all-in-one platform to store, transact and manage digital assets, contains the following components:
* Dedicated Approval Devices to access the solution, create transactions and approve the transactions based on tailor-made approval workflows.
* Confidential computing infrastructure to protect all sensitive operations and services.
* Segregated accounts and addresses managed by the Confidential Keystore
* Extended AML and full node service.
* R3C audit ledger that provides real-time, immutable audit trails of all critical operations.

RIDDLE&CODE’s Digital Asset Management Solution (DAMS) combines hardware and software to store, secure and manage various digital asset categories. The solution provides multi-device approval workflows based on multi-approver policies. The DAMS consists of the following components:

IMAGE MISSING

#### Order Services

Integration with existing client systems for the creation and management of digital asset orders.

#### Financial Services

Interfaces to existing information and core banking systems.


#### Client (user) interface

Dedicated web interface providing access to all essential operations of the Digital Asset Management Solution. It separates roles between administration and execution and facilitates operations, such as initial set-up, user onboarding and revoking, multiple approval configuration, policy management, key and address management, transaction signatures, validation, execution and broadcasting signed transactions to blockchain networks.

#### Approval Devices

Physical devices used for authentication and access to the web interface and transaction approval. Each Approval Device is secured by its own cryptographic identity and has the capability to limit the access and management of the settings and policies.

#### Trusted Execution Environment (TEE)

The TEE is a secure area of the main processor ensuring protection of the code and data loaded inside the processor. As an isolated execution environment, TEE provides integrity of applications operating within the TEE, along with confidentiality of their assets. In general terms, the TEE offers an execution space that provides a higher level of security than an operating system (OS) and more functionality than the Secure Element (SE). All critical components of the Digital Asset Management Solution are operated in a TEE.

#### Policy Layer

Digital Asset Management Solution provides clients with a TEE cloud solution that has a specific Policy Layer that regulates, protects and logs every type of transaction. The Policy Layer is an integral part of a universal signing server, and it is implemented using dedicated machines featuring a Trusted Execution Environment (TEE). A TEE encapsulates the program and related access keys in a specific hardware-protected memory area in the processor core.

The Policy Layer is comprised of:
* a logic to evaluate and verify a given policy set,
* a set of policies defined by the client to govern the creation and execution of transactions, and
* an API to administer the set of policies and access permissions.

#### Transaction logic

Transaction logic is a service to securely issue unsigned transactions, which are then signed by the Confidential Keystore.

#### Confidential Keystore

A cryptographically secured service running in a dedicated Trusted Execution Environment, the Confidential Keystore manages all operations related to the underlying keys and ensures secure key generation, storage and use.

#### Notarisation Service

RIDDLE&CODE integrates a dedicated notarisation and certification tracking solution to create, attest and track digital certificates across their lifecycle.
