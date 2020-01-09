# Solution Architecture


With the release of the new Trusted Node2.0 to the Digital Asset management solution RIDDLE&CODE updated the unterlying Archicture to improve the process security. 

## Table of contents
- [Architecture](#architecture)
- [New Deployment of Updates](#new-deployement-of-updates)
- [The trusted Execution enclave](#the-trusted-execution-enclave)
- [New Webinterface](#new-webinterface)
- [New Admin area](#new-admin-area)

## Architecture

The architecture of the Digital Asset Management Solution has ben enhanced to serve enhance the security and usability of the overall solution.

![alt text](https://github.com/RiddleAndCode/trusted-node-manuals/blob/master/assets/fee.png "Architecture.png")

With the new Trusted Node2.0 RIDDLE&CODE updated the underlying hardware to reflect the new requirements in regard of security and performances as well as the software architecture

Additionally the updated Digital Asset Management solution has been extended with a dedicated Admin Device family to increase and streamline the adminstrative workflow and to enhance the security of the solution.

## New Deployment of Updates

RIDDLE&CODE pivoted from providing signed binaries and move to Docker Images to provide updates to the Trusted Node 2.0

Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels.

## The trusted execution enclave

A trusted execution environment (TEE) is a secure, integrity-protected processing environment, consisting of processing, memory and storage capabilities. It is isolated from the “normal” processing environment, sometimes called the rich execution environment (REE), where the device operating system and applications run. TEEs were designed to provide protection so that sensitive operations are restricted to the TEE and sensitive data, like cryptographic keys, never leave the TEE. 

One specific application in this regard and a cornerstone of the Digital asset management solution is the Intel® Software Guard Extensions (Intel® SGX). It is a set of instructions that increases the security of application code and data, giving them more protection from disclosure or modification. 


## New Webinterface

RIDDLE&CODE updated the webinterface to improve the usability and performance of the solution.


## New Admin area 

The admin area has been updated to reflect the new feature set and access process. 
***Note: to access the Admin area the two Admin devices need to be connected to the Trusted Node and the on device messages need to be confirmed***

At the initial access to the Trusted Node2.0 the following steps are required: 

**Step 1** 
Select one of the two Admin Devices 

**Step 2**
Select new signing quorum 

**Step 3**
Total number of slices: 2

**Step 4**
Minimum number of slices to sign: 2

**Step 5**
Create

**Step 6**
Follow the on device screen instructions and perform a 2 person Key ceremony: https://riddlecode-digital-asset-management-manuals.readthedocs-hosted.com/en/latest/KeyCeremony-2persons/

**Step 7**
Note down the Public Key shown on the interface and send it to support@riddleandcode.com

**Step 8**
RIDDLE&CODE sends you an updated docker-compose file with the public key of step 7 provisioned to the policy layer.

**Step 9**
Access the Trusted Node and login with the provided credentials 
Copy the updated docker-compose file sent by RIDDLE&CODE to /home/dam/dam

**Step 10**
On the Trusted Node issue this bash-command
run /home/dam/dam/update.sh

After the update has been processed issue this bash-command
sudo service dam restart

## 