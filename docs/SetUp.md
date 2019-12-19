# Setting up the Digital Asset Management Solution - 

The RIDDLE&CODE Digital asset management solution is a combination of hardware and software to safekeep digital assets and provides a agile governance and policy service to cater to regulatory and process requirements.

The solution consists of a Tusted Node2.0 and a set of dedicated Signature devices.

Setting up the DAM solution includes the following steps

- [Initial set up of the DAM solution]
- [Set up & enable Admin Signing devices (backup 2 person)](#Set-up-&-enable-Admin-Signing-Devices)
- [Set up basic system features](#Set-up-system-features)
- [Define PINs and labels for all Signing Devices (all devices)](#set-up-system-features)
- [Policy service on DAM](#Set-up-policy-services)
- [Setup Distributed Signing Family](#Set-up-system-features)
- [Store quourm backups](#store-quorum-backups)
- [Verify quorum backups](#Verify-quorum-backup)

The product is shipped with a basic setup containing an operation system, basic system/CPU configuration, and inital parts of the application. This includes a basic Webinterface to sign transactions.
And the following set of information is also part of the initial hardware delivery:

* User and password combination to access the DAM node remotely or locally
* A URL to set up the Administrator Signing Devices (https://<IP of DAM node>:5000)
* A docker-compose file to install the Trusted Execution Environements.
* A settings file to start the DAM solution with.

## 1. Initial set up of the DAM solution

Please login to the Trusted Node2.0 with the credentials provided to perform the following steps:

1. 'passwd' to set a new password.
2. 'mkdir ~/dam' to create a directory for the solution.
3. 'cd ~/dam' to enter the solution directory.
3. Copy the settings.json to the dam folder
4. Copy the docker-compose.yml to the dam folder
5. 'docker login' to download the Trusted Execution Environments. 
*Please keep in mind to get your docker account registered by RIDDLE&CODE by sending an e-mail to support@riddleandcode.com*
6. 'docker-compose up' to set up the TEEs 


## Set up & configure Admin Devices

To provide a secure process of managing the core system features the solution provides a dedicated Admin interface. This interface is only accessible with the help of dedicated Administrator Devices (AD) to unlock these features of the interface. The AD are being set up as a Secure Multi-Party Computation (SMPC) device family with a quorum of 2 out of 2.
*Please note: the AD require a dedicated Key Ceremony vis a vis the Key ceremony for the Signing Devices to validate value transactions*

e.g. To create policy rules the two AD must be connected to the Trusted Node 2.0 and collaboratively sign the process. 

Every change and configruation inside the admin area needs to be signed by the two AD as a Secure Multi-Party Computation (SMPC). Thereby a multi-eye principle is applied to the process of changing the settings of the DAM solution.

The URL to start the set up process for the AD is physically included in the hardware delivery (see above).

To set up the Admin Devices follow the instructions below:
1. Connect the Administrator Devices to the Trusted Node2.0
2. Enter the URL to set up the Administrator Devices
3. Follow the steps on the interface and device screens

## Set up system features

After the initial set up of the Admin Devices the administrators can access the dedicated admin page through the interface and set up the various endpoints and settings required to operate the DAM solution.
The solution by default is preconfigured. 

**ADD screenshots of DB etc.** 

## Policy Configurator on DAM

This is the interface area to create, manage and add new transaction policies. The policy service is a highly secure feature that provides the possibility to add rules that govern the execution of transactions. The policy is protected and executed inside the Trusted Execution Environment (TEE) and each change to aformentioned policies requires the AD to sign the change. It provides the foundation to create agile and secure processes and governance tailormade to the requirements of the client.

Access to this service is limited to the owners of the AD

### Define policies on DAM

The setup of the policies is done via the web interface. They are then crpyotgraphically attested to the Trusted Node 2.0.
To attest any new rules to the policy service, the ADS are required. 

ADD Screenshot policy 

Examples of these policies: 

1. Operation process **WITH** limits
>* Objective: To replenish the stocks of semi-cold wallets to hot wallets
>* Involved signing parties: two operations staff members who are allowed to release 
>transactions to a limited extent (e.g head of operations + one of his employees) (up to a maximum of xx thousand EUR).

2. Operation process **WITHOUT** limits
>* Objective: To replenish the stocks of semi-cold wallets to hot wallets
>* Involved signing parties: The management members who are allowed to release 
>transactions to an unlimited extent (e.g head of operations + additional high level management) (without a limit).

* Note: For all transactions,the presence of the Head of operations is a hard requirement to be able to execute a succesfull transaction *

## Setup Distributed Signing Family

The distributed signing family is the enabling concept behind the RIDDLE&CODE Digital Asset Management Solution. It empowers institutions to deploy various (N) Signature Devices and enable an arbitrary subset to sign a transaction.

This process will create a unique identity (Key pair) for the distributed signing family with the corresponding mnemonic phrase.

ADD SCREEN SHOT
To start the process the user has to click:
DESCRIBE PROCESS BASED ON naming of interface

Having computed the slices, the Master SD will connect to all other devices and share their slice via an encrypted communication channel. The other SDs will prompt their users to enter their PINs.


## Store quorum backups

The initial creation of the Distributed Signees will also create a mnemonic phrase which needs to be backed up. With the mnemonic phrase it is possible to restore or recreate devices in case one or some get lost, malfunction or the system is to be re-set up due to changing compliance requirements.

The basic requirement of the creation and the restoration process is the active connection of all N Signature Devices. One Signature Device will be identified as the Master Signature Device and start the creation/restoration process. While setting up the first wallet a mnemonic phrase consisting of 24 words will be displayed on the Master Signature Device. The phrase is displayed word by word and the user will be only able to go through this process once. Pressing the button once proceeds to the next word.

Implement Screenshots to walk through the step by step creation of the mneomonic back up.


## Verify quorum backup


Implement Screenshots to walk through the step by step back up verification 


## Operation of the Digital Asset management solution 

After the initial set up of all devices, the succesfull backup of the two (2) quroums the solution is no ready an doperational. 

For the detailed walk through the features please head over to the dedicated [Manual](/blob/master/docs/Manual.md/)
