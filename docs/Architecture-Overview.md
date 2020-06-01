# Solution Architecture

With the latest release the Digital Asset management solution RIDDLE&CODE updated the hardware of the Trusted Node and made some improvements to the workflow and userflow.

These changes enhance the overall security and usability of the solution and are the foundation

## Addons

- [Fee estimates](https://riddlecode-rtd-docs.readthedocs-hosted.com/Fee-estimates/)
- [Reconciliation](https://riddlecode-rtd-docs.readthedocs-hosted.com/Reconciliation.md)

### Table of contents

- [Architecture](#architecture)
- [Deployment method](#deployement-method)
- [The trusted execution environment](#the-trusted-execution-environment)
- [Webinterface](#webinterface)
- [New admin area](#new-admin-area)
- [Set up of admin devices](#set-up-admin-devices)
- [Policy configurator](#policy-configurator)

### Architecture

#### Hardware elements:

**Trusted Node** is a dedicated, (tamper-proof), physical device whose role is to create, organize and sign transactions. Trusted Node is the only device connected to the Internet, and for that reason, it never holds any sensitive information such as a private key. Trusted Node also hosts the web interface and provides APIs required for external system integration. Trusted Node contains the following features: Trusted Execution Environment (TEE), web interface with access to the crypto asset network, policy layer, and full node. With Trusted Node, our clients can create and sign multi-signature signing schemes for any asset, manage crypto addresses including account balance, connect with core banking system API (if required), initialize signature devices, and create an unlimited number of the custodial wallets.

**Signature devices** are physical devices that are always cold and allow safe access and release of the funds stored in the wallet. Signature devices are orchestrated and connected to Trusted Node either via cable-based USB, web  USB or Bluetooth. Signature Devices enable clients to securely create and manage keys and protect storage, provides PIN Authentication, secure transaction confirmation, mnemonic phrase recovery, access to web interface, and validate transaction execution.


#### Software elements:

**Web interface** is hosted on the Trusted Node and provides all the essential functionalities necessary for conducting operations with Digital Asset Custody. Web interface separates roles between administration and execution. Operations done via web interface include: initial wallet set up, multiple signature configuration, policy management (optional), key and address management, whitelisting and blacklisting, transaction signature, validation, and execution, broadcasting of signed transactions to blockchain networks.

**Trusted Execution Environment** is a secure environment isolated from the regular processing environment where the operating system and applications run. The purpose of TEE is to protect sensitive data and information cryptographic keys and to make sure that they never leave the highly protected environment.

![Architecture](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/architecture.png "Architecture.png")



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


### The trusted execution environment

A trusted execution environment (TEE) is a secure, integrity-protected processing environment, consisting of processing, memory and storage capabilities. It is isolated from the “normal” processing environment, sometimes called the rich execution environment (REE), where the device operating system and applications run. TEEs were designed to provide protection so that sensitive operations are restricted to the TEE and sensitive data, like cryptographic keys, never leave the TEE.

One specific application in this regard and a cornerstone of the Digital asset management solution is the Intel® Software Guard Extensions (Intel® SGX). It is a set of instructions that increases the security of application code and data, giving them more protection from disclosure or modification.

### Webinterface

RIDDLE&CODE updated the webinterface to enhance the usability and performance of the solution.

![Interface New](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/landingpage.png "Landingpage")

The major improvements are:

* New design and userflows
* Admin area can only be accessed with connected Admin Devices

**Note:** to access the Admin area the two Admin devices have to be connected to the Trusted Node and the on device messages need to be confirmed

### New Admin area

The admin area has been updated to reflect the new feature set and access process.

![Settingspage](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/settingspage.png "Setup admin devices")

It hosts the following pages:

* Settings page
* Define Signing Quorum
* Set master device
* Change Pin
* Precalculate accounts
* Policy configurator
* Update addresses
* Set device label
* Prove address ownership

#### Set up Admin devices

At the first onsite installation of the solution, the administrator(s) will be briefed on the crucial first step in creating and setting up the new admin devices with dedicated documents.

At the initial set up the user needs to perform the following steps:

![Initial Set up](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/Setupadmin.png "Setup admin devices")

* Step 1
Select one of the two admin devices

* Step 2
Select "new signing quorum"

* Step 3
Total number of slices: 2

* Step 4
Minimum number of slices to sign: 2

* Step 5
Click on create

* Step 6
Follow the on device screen instructions and perform a two party key ceremony: https://riddlecode-digital-asset-management-manuals.readthedocs-hosted.com/en/latest/KeyCeremony-2persons/

* Step 7
Note down the Public Key shown on the interface and send it to support@riddleandcode.com

* Step 8
RIDDLE&CODE sends you an updated docker-compose file with the public key of step 7 provisioned to the policy layer.

* Step 9
Access the Trusted Node and login with the provided credentials
Copy the updated docker-compose file sent by RIDDLE&CODE to /home/dam/dam

* Step 10
On the Trusted Node issue this bash-command:
run /home/dam/dam/update.sh

After the update has been processed issue this bash-command:
sudo service dam restart

### Policy Configurator

Generally speaking, the policy layer is a set of rules that can be defined by the client. The underlying rules govern the transactions and how they are executed.

![Policy configurator](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/policyconfigurator.png "Policy Configurator")

By default the Digital Asset Management solution denies all outgoing transactions as long as the administrator does not set up the admin devices and creates the first policy:

RIDDLE&CODE recommends to always implement at least the following rule:

> No limit for all transactions where the master signature device is connected. With a minimum number of signatures of 1 out of 1.

# Support
For all inquiries on not already covered in this manual feel free to contact us directly via: support@riddleandcode.com
