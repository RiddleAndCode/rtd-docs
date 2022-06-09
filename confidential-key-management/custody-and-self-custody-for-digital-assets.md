# Custody and self-custody for digital assets

Confidential Key Management leverages a robust combination of hardware and software to provide flexible and agile custody services that offer the highest level of security.

The performance and security of the platform are backed up by the following features:

| Feature                                              | Description                                                                                                                                                                                                                                                                            |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| DID-ready                                            | Implementation of decentralised identifiers enables self-sovereign, verifiable digital identities**.**                                                                                                                                                                                 |
| Native signing of x.509 certificates                 | CKM supports the native signing of x.509 certificates, without exposing critical key material at any stage.                                                                                                                                                                            |
| REST APIs                                            | <p>All operations related to account management, coin addresses and transaction signing are exposed via TLS-secured REST APIs. Access to the core features of: </p><ol><li>master key generation and backup</li><li>account generation</li><li>coin addresses</li><li>nodes.</li></ol> |
| Authentication and authorisation                     | <p>Authentication is handled via mutual TLS, where a customer’s x.509 CA certificate is used to verify requests to the service.</p><ol><li>TLS</li><li>JWT</li></ol>                                                                                                                   |
| Support for non-secp-256 curves                      | <p>Support for a variety of cryptographic schemes within the Trusted Execution Environment.</p><p></p><p><strong>Ed25519</strong></p><p><strong>ECDSA</strong></p>                                                                                                                     |
| Support for the following cryptocurrencies and coins | <ol><li>Bitcoin</li><li>Bitcoin Cash</li><li>Ethereum</li><li>Ethereum Classic</li><li>Stellar</li><li>Litecoin</li><li>Ripple</li><li>Cardano</li><li>Binance Chain</li><li>Dash</li><li>Ocean Protocol</li><li>Energy Web Token (EWT)</li><li>BigchainDB</li><li>ERC20</li></ol>     |
| Hierarchical deterministic wallet support            | <p>Hierarchical deterministic address and wallet structure for convenient management of derivations based on:</p><ol><li>BIP-32</li><li>BIP-43</li><li>BIP-44</li></ol>                                                                                                                |
| Own your keys                                        | Manage your keys in a simple and easy way via a backup and recovery mechanism following BIP-39 standard.                                                                                                                                                                               |
| Confidentiality                                      | Using the Trusted Execution Environment (powered by Intel® SGX) prevents sensitive key material from being exposed.                                                                                                                                                                    |
| End-to-end disaster and recovery process             | Offline and physical backup capabilities of key material that follows the industry standards for creating seed backups (BIP-39).                                                                                                                                                       |
| ISO 27001                                            | CKM is undergoing independent, expert assessment of ISO 27001 certification to ensure that relevant data is protected.                                                                                                                                                                 |
| Deloitte IT system audit                             | Deloitte Austria conducted a thorough investigation in 2020 to ensure the reliability of the processes and core infrastructure.                                                                                                                                                        |
| Extensive security audits and pen-testing            | The service underwent a security audit in 2020 to validate the protection of sensitive cryptographic material.                                                                                                                                                                         |



### Components

| Component                           | Description                                                                                                                                                                                  |
| ----------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| REST APIs                           | Dedicated APIs with TLS-protected communication interact with the core components of CKM.                                                                                                    |
| Confidential Keymen                 | An open-source command-line interface connected to the CKM starts the key generation during the initial set-up. Communication is protected by TLS or JWT depending on customer requirements. |
| Confidential Key Management service | Generates, stores and manages access to cryptographic key material. Signs certificates and data in the Trusted Execution Environment.                                                        |

### **Architecture**

| Cloud Service | RIDDLE\&CODE and located in  Austria. |
| ------------- | ------------------------------------- |



### &#x20;<a href="#architecture" id="architecture"></a>

Operated by RIDDLE\&CODE and located in Austria.
