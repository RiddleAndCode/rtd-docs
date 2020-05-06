# Architecture

![Architecture](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/architecture.png "Architecture.png")

## Hardware elements:

**Trusted Node** is a dedicated, (tamper-proof), physical device whose role is to create, organize and sign transactions. Trusted Node is the only device connected to the Internet, and for that reason, it never holds any sensitive information such as a private key. Trusted Node also hosts the web interface and provides APIs required for external system integration. Trusted Node contains the following features: Trusted Execution Environment (TEE), web interface with access to the crypto asset network, policy layer, and full node. With Trusted Node, our clients can create and sign multi-signature signing schemes for any asset, manage crypto addresses including account balance, connect with core banking system API (if required), initialize signature devices, and create an unlimited number of the custodial wallets.

**Signature devices** are physical devices that are always cold and allow safe access and release of the funds stored in the wallet. Signature devices are orchestrated and connected to Trusted Node either via cable-based USB, web  USB or Bluetooth. Signature Devices enable clients to securely create and manage keys and protect storage, provides PIN Authentication, secure transaction confirmation, mnemonic phrase recovery, access to web interface, and validate transaction execution.


## Software:

**Web interface** is hosted on the Trusted Node and provides all the essential functionalities necessary for conducting operations with Digital Asset Custody. Web interface separates roles between administration and execution. Operations done via web interface include: initial wallet set up, multiple signature configuration, policy management (optional), key and address management, whitelisting and blacklisting, transaction signature, validation, and execution, broadcasting of signed transactions to blockchain networks.
![Interface New](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/landingpage.png "Landingpage")


**Trusted Execution Environment** is a secure environment isolated from the regular processing environment where the operating system and applications run. The purpose of TEE is to protect sensitive data and information cryptographic keys and to make sure that they never leave the highly protected environment.

**Policy Layer** is a set of rules, defined by the financial institution, that governs transactions and the way of their execution. For example, an institution can set time-based condition (e.g. within two hours), define whitelists and blacklists (and transact only with whitelisted addresses), limit of total trade value (daily/weekly/monthly), nationality (e.g. restrict transfers to a specific country). All operations of policy layer occur within the Trusted Execution Environment.


**APIs**

The Digital Asset Custody solution features a set of application programming interfaces (API) to access the core features of the solution as well as offering a wide range of integration options with existing systems.

Available API | Description
------------  | -----------
Transaction creation and signing | Creating and signing of transactions via the Trusted Node and Signature Devices
Transaction history | Shows all related transactions for any coin addresses
Account labelling | Gives a human, readable name to generated accounts and child addresses
Custody accounts administration | Generation and management of all created addresses
Generate signing quorum | Initial set up or recovery of a signing Quorum
Policy Layer | A secure and customisable way to create and manage approval workflows and to meet business requirements of transaction governance
Prove ownership | Sign any message to proof the ownership of any given coin address managed through the solution
Audit logs | Providing the capability to store and make accessible all required information and to provide extensive and detailed audit log files
Reconciliation | Provides the functionality to run a customisable reconciliation process providing all address related information in real time, confirmed and unconfirmed balances




### Deployment methods

On-premise:
Deployment and installation of digital asset custody on-premise with:
* Trusted Execution Environment on site
* Policy Engine on site
* Signature devices on site


Self-Hosted:
With hosted deployment, Trusted Node is hosted in your existing Data center while you sign your transactions on-premise. We offer:
* Trusted Node server edition
* Policy Engine as a service
* Signature devices on site



Hybrid:
In case our on-premise or fully hosted deployment doesn’t fit your needs, we can provide you with a hybrid deployment model. Here is an example:
* Trusted Node on site
* Policy Engine as a service
* HSM in your Data center
* Signature devices on site
