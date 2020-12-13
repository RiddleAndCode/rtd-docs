# User interface

## Summary

* The main functionalities of the Digital Asset Management Solution (TMP) are accessed through the user interface.
* Assigned users can access the TMP user interface by connecting their Approval Devices with corresponding computers.
* User interface provides access to the cloud-based service, where clients can generate and recover keys, place and manage orders, set up and edit policies, retrieve portfolio balances, extract transaction cost analyses and offer custody service to its clients.

The user interface is hosted on dedicated machines, built upon REACT, Typescript and Bootstrap, and operated by RIDDLE&CODE.

Access to the interface is guarded with several security layers. To access, the client needs to connect the Approval Device to the computer. There are two types of authentication methods used to guarantee that only authorised Approval Devices and users can access the user interface. They are:
1. FIDO 2 for authentication of the device, and
2. PIN for authentication of the user on the device itself.
All communication channels between the devices and the core components of the TMP are hardened and strictly encrypted.

Role-based access and control (RBAC) is set to assure that only the user, with appropriate role and credentials, can access a certain area within the interface.
Separation of roles involves the separation of two main functions:
* Administrators, who control so-called critical actions within the Administration area, such as the assignment of roles and responsibilities, access rights to the enclave, registering a user, defining the quorum required to sign certain transactions, adding new policies, etc.
* Operators, who perform everyday activities like signing transactions or adding trusted recipients.

The user interface is divided into three main areas:
1. administration,
2. settlement, and
3. addresses.

The **administration area** consists of six sections:
1. **Policies**. Clients can see the list of all active and disabled policies, add new policies and edit their scenarios.
2. **AML settings**. Clients can submit tokens and perform AML-related analyses.
3. **HSM settings**. Clients can add new HSM keys or set HSM URLs.
4. **Device manager**. The section that controls operations related to the Approval Devices.
5. **Register user**. The section for registering new users and giving them access rights.
6. **Key management**. Clients can generate and restore keys.

In the **Settlement area**, a client can manage operations related to transactions, including:
* transaction creation,
* transfers of funds, and
* viewing transaction details, such as the history and state of a transaction.

**The addresses area** shows the list of all assets with details like account ID, account type and ownership. This section also allows clients to add new accounts and trusted recipients.
