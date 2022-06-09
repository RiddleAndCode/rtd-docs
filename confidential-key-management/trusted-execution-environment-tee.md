# Trusted Execution Environment (TEE)

Trusted Execution Environment (TEE) is a secure area of the main processor ensuring protection of the code and data loaded inside. As an isolated execution environment, TEE provides integrity of applications operating within it, along with confidentiality of their assets. In general terms, the TEE offers an execution space that provides a higher level of security than an operating system (OS) and more functionality than the Secure Element (SE).

A cryptographically secured service running in a dedicated Trusted Execution Environment— Confidential Keystore—manages all operations related to the underlying keys and ensures secure key generation, storage and use. Transaction logic issues unsigned transactions, which are then signed by the Confidential Keystore.
