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

The architecture of the Digital Asset Management solution has been enhanced to improved the security and usability of the overall solution.

![Architecture](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/architecture.png "Architecture.png")

With the new Trusted Node2.0, RIDDLE&CODE updated the underlying hardware to reflect the new requirements in regard of security and performance as well as the software architecture

Additionally, the updated DAM solution has been extended with a dedicated Admin device family to increase and streamline the adminstrative workflow.

### Deployment method

RIDDLE&CODE pivoted from providing signed binaries and moved now provide signed Docker images to provide updates to the Trusted Node 2.0.

Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels.

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


