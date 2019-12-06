# Setting up the Digital Asset Management Solution - 


Setting up the DAM solution includes the following steps

1. Prepare the system
2. Set up basic System features
3. Set up & enable Admin Signing devices (backup 2 person)
4. Define PINs and labels for all Signing Devices (all devices)
5. Define policies on DAM
6. Setup Distributed Signing Family
7. Store backups

The product is shipped with a basic setup (step 2 completed). This includes a basic Webinterface to sign transactions.
And the following set of information

* User and password combination to access the DAM node remotely or locally
* A URL to set up the Administrator Signing Devices (https://<IP of DAM node>:5000)

## Prepare the system

Describe the Wipeing steps, see Manual https://docs.google.com/document/d/15SrOEG0_FqSn_YWyTiPchxtD7EwogN3kOagrRrDiMPk/edit#heading=h.jetg6wi9mbda

## Set up & enable Admin Signing Devices

To provide a secure process of managing the core system features the solution provides a dedicated Admin interface. This interface is only accessible with the help of dedicated Administrator Signing Devices (ADS) to unlock these features of the interface. The ASD are being set up as a Secure Multi-Party Computation (SMPC) device family with a quorum of 2 out of 2.

e.g. To create policy rules the two ADS must be connected to the Trusted Node 2.0 and collaboratively sign the process. 

The administrators sign off with their Administrator Signing Devices. The administrators perform with their devices a Secure Multi-Party Computation (SMPC) to recreate the key to sign the communication to access the administrative pages and sign off the changes. Thereby a multi eye principle is applied to the process of changing the settings of the DAM solution.

The URL to start the process is received with the hardware (see above).
To set up the Admin Signing Devices follow the instructions below:
1. Connect the Administrator Signing Devices
2. Enter the URL to set up the Administrator Signing Devices
3. Follow the steps on the interface and device screens

## Set up basic System

After the initial set up of the Admin Signing Devices the administrators can access the dedicated admin page through the interface and set up the various endpoints and settings required to operate the DAM solution

## Retrieve Policy Service for Admin devices

This is the interface to create, manage and add new transaction policies. The policy service is a highly secure feature that provides the possibility to have a policie based execution of transactions. 

The two policies currently implemented for the evaluation phase are the following: 

1. Operation process **WITH** limited limits
>* Objective: To replenish the stocks of semi-cold wallets to hot wallets
>* Involved signing parties: two operations staff members who are allowed to release 
>Transactions to a limited extent (e.g head of operations + one of his employees) (up to a maximum of 200k EUR).

2. Operation process **WITHOUT** limited limits
>* Objective: To replenish the stocks of semi-cold wallets to hot wallets
>* Involved signing parties: The C-Level members who are allowed to release 
>Transactions to an unlimited extent (e.g head of operations + one of the C-level) (without a limit).


* Note: For all transactions,the presence of the Head of operations is a hard requirement to be able to execute a succesfull transaction 

## Set up final Policy Service

The initial requirement to utilise the 


## Define policies

As defined in the 

## Setup Distributed Signing Family



## Store mnemonic phrase

The initial creation of the Distributed Signees will also create a mnemonic phrase which needs to be backed up. With the mnemonic phrase it is possible to restore or recreate devices in case one or some get lost, malfunction or the system is to be re-set up due to changing compliance requirements.

The basic requirement of the creation and the restoration process is the active connection of all N Signature Devices. One Signature Device will be identified as the Master Signature Device and start the creation/restoration process. While setting up the first wallet a mnemonic phrase consisting of 24 words will be displayed on the Master Signature Device. The phrase is displayed word by word and the user will be only able to go through this process once. Pressing the button once proceeds to the next word.

Implement Screenshots to walk through the step by step creation of the mneomonic back up.


## Verify mnemonic phrase backup


Implement Screenshots to walk through the step by step back up verification 


## Set up & enable Admin Signing Devices


## Operation of the Digital Asset management solution 

After the initial set up of all devices, the succesfull backup of the two (2) quroums the solution is no ready an doperational. 

For the detailed walk through the features please head over to the dedicated [Manual](/blob/master/docs/Manual.md/)
