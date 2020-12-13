# Policy Layer

## Summary

* This document presents an overview of the Policy Layer and its functionalities.
* The document describes the process of defining the roles and access rights to the system as well as defining and customisation of approval rules.

The Policy Layer is a set of rules defined by the client that performs and logs all processes preceding and following transaction authentication. It verifies that the defined roles and rules are imposed and specifies the access rights to the platform and any of its functionalities.

## Role-based permissioning

Role-based access and control (RBAC) is set to associate permissions to roles. The permissions define the level of access to the system.

The Policy Layer is cryptographically secured within the Trusted Execution Environment (TEE), which assures that only the user, with appropriate role and credentials, can access. This principle is opposite to defining and controlling rules by database entries and routines, in which case, a system cannot verify if the person who changed the threshold has the right credentials or appropriate access rights.

When a user tries to perform a certain action, the system will check the user’s roles and then evaluate to see if that role has permission to execute the action. Since different components of an operation are permissioned to different personnel, no party has sole control of the full process.

## Separation of roles

Separation of roles involves the separation of two main functions:
* **Administrators, and**
* **Operators**
Administrators are the only ones who have access to the Policy Layer and can control so-called critical actions. These include operations and changes within the Trusted Execution Environment, such as the assignment of roles and responsibilities, access rights to the enclave, registering a user, defining the quorum required to sign certain transactions, adding new policies, etc.

Approval rules for signing transactions can be defined according to different parameters, as shown in the following table:

Policy        | Description
------------- | -----------
**Threshold** | Defines the maximum amount allowed per  transaction for a certain user group. For example, an amount below 50,000 euros can be approved by the operators, but transactions above this threshold require additional approval.
**Authorised users per amount** | Defines user groups that are allowed to participate in transaction approvals.

**Note**: Besides administrators, operators are also allowed to:

**Add trusted recipients** | Specifies trusted accounts/addresses that are allowed to perform transactions.
**Disabled trusted recipients accounts** | Blocks transactions to untrusted external accounts.

## Policy based Transaction process

Every new transaction can be executed only if it is in compliance with the active set of rules. Here is how the process works:

1. **Defining the roles.** The client sets the segregation of roles between departments and their roles in the operations. For example, an administrator can pick the approval group and preapprove transactions based on the involved users.
2. **Setting the rules.** Policies are defined by rules and can be customised according to different factors, including the number of transfers, the required signatures, a maximum amount per transaction, per-period limit etc. Through the dedicated user interface, users can define rules based on Domain-Specific Language (DSL). This allows users to see the rules not only in machine language but in a human-readable form as well, catering to the convenience of daily operations.
3. **Signing the transactions.** Every new transaction is processed through the Policy Layer, which matches the requirements for the transactions with the existing policies. The user will then be asked to approve this event with his/her approval device. This event will also be broadcast to all the users who have roles that may perform the action. The system will then keep the event and collect signatures until the event times out or passes one of its policies. If all rules applicable for the transaction are adhered to, the Policy Layer accepts and executes the transaction. If any of the rules are not followed, the Policy Layer declines the execution and rejects the transaction.


 IMAGE MISSING


In addition, the Policy Layer provides audit trails of all conducted operations, including such details as which changes have been made, who made those changes, who signed the transaction, the place and time, the amount, the fees, the accounts involved, etc.
