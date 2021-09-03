## Summary

* This document describes how the Token Management Platform uses dedicated Approval Devices to identify users and their roles in the operations. It also describes the operations and actions that clients can perform with Approval Devices.
* Token Management Platform (TMP) is a cloud-based service that secures and stores the keys necessary to sign transactions. To guarantee that the client has full control over the authorisation and signing process, RIDDLE&CODE developed the Approval Devices. The devices are held by the client on the premises and by the authorised personnel of the organisation.

* **Note:** Approval Devices are highly-sophisticated cryptographically secured devices that follow the E2E security approach and the four-eye principle. In the next paragraphs, we explain the Approval Devices’ design philosophy and purpose.

IMAGE MISSING
*Fig.1 Approval device*

Approval Devices are physical devices used for authentication and access to the web interface and for providing secure and trusted approval capabilities. Each Approval Device is secured by its own cryptographic identity, with the capability to limit the access and management of operations, settings and policies. Clients connect the Approval Device to their individual computers. All communication channels between the devices and the core components of the TMP are hardened and encrypted.

The Approval Devices have the following functions:

1. authentication and access to the TMP,
2. management of critical functionalities like Policy Layer rules, and
3. approval of transactions.

There are two types of authentication methods used to guarantee that only authorised Approval Devices and users can access the TMP:

1. FIDO 2 for authentication of the device, and
2. PIN for authentication of the user.

## RIDDLE&CODE’s Secure Element

At the core of the Approval Devices is a dedicated Secure Element, a part of RIDDLE&CODE’s “Built for Blockchain” product range featuring a dedicated CC EAL 6+ compliant crypto accelerator and crypto storage chips, which enable secure storage of the digital identity (private key) on any given device through the combination of hardware and software. The TMP’ Policy Layer checks against the Secure Element and its identity for each transaction to guarantee that only authorised devices can create and approve transactions.

The devices support modern cryptographic algorithms that are focused around Elliptic Curve cryptography. The core integrity of the Approval Devices is defined by the cryptographic private-public key pair that is defined on the cryptographic processor during its first initialisation (TRNG).

## Design philosophy

These tamper-evident devices are developed as an industrial-grade cryptocurrency wallet to support trading and identity management. The following principles have been implemented during the development and design of the device:

* zero-trust principle,
* PIN protection,
* single-purpose computer,
* limiting the attack surface,
* off-the-bus cryptographic secrets,
* physical security (FIPS 140-2 level 2), and
* secure firmware update process.

## Audits and certifications

The Approval Devices are based on existing devices that achieved FIPS 142 Level 2 compliance (with the aim of compliance with FIPS 142 Level 3) and the Secure Elements with Common Criteria EAL 6+ certification.

 Hardware
:-----------:

| Touch screen: 3.5"  
| Resolution: 320x240 pixel
| USB-C Connectivity
| ARM STM32F4 MCU

Security by design
:-----------------:

* Multiple Crypto Accelerators and Crypto Storage ICs for  highest level of security
* Secure Boot
* Signed Firmware
* Secure Firmware update
* Verifiable FW (signed by R&C)  
