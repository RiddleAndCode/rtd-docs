# Policy Layer

The Policy Layer is a set of rules that performs and logs all processes preceding and following transaction authentication. It verifies that the defined roles and rules are imposed and specifies the access rights to the platform and any of its functionalities.

|                                 CHALLENGE                                  |                                                                                                                                                                                                               Token Management Platform                                                                                                                                                                                                              |
| :------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|  <p></p><p>Meeting regulatory criteria for transparency and compliance</p> | Policy Layer provides trails of all conducted operations, including details like which changes have been made, who made those changes, who signed the transaction, the place and time, the amount, the fees, the accounts involved, etc. With policies that are fully auditable and written in a human-readable language, audit trails become the trusted source, validating that all operations were done in compliance with regulatory frameworks. |
| <p></p><p>Ensuring that transaction governance is secure and immutable</p> |                                  Allows clients to set role-based access control in the operational processes and define the access rights to the Token Management Platform and any of its functionalities. For example, separation of roles can be among administrators and operators. Administrators are the only ones who can create and customise transaction rules, ensuring that no circumvention is possible.                                 |
|                         Preventing internal misuse                         |  Allows defining of approval rules for signing transactions according to different parameters. Every new transaction can be executed only if it complies with previously set rules. If any of the rules are not followed, the Policy Layer declines the approval and rejects the transaction. This enables clients to approve and execute transactions following tailor-made, cryptographically secured approval rules and prevents internal misuse. |



### **See it in action**

1. **Define roles.** Client sets the segregation of roles between departments and their roles in the operations. For example, an administrator can pick the approval group and pre-approve transactions based on the involved users.
2. **Set rules.** Policies are defined by rules and can be customised only by the administrators utilising the multiparty computation concept. The rules can be based on different factors, including the number of transfers, signatures, maximum amount per transaction, per-period limit, etc.
3. **Sign transaction.** Every new transaction is filtered through the Policy Layer, which matches the requirements for the transactions with the existing policies. If all rules applicable for the transaction are adhered to, the Policy Layer accepts and executes the transaction.



#### Examples of policies

| Policy                      | Description                                                                                                                                                                                                          |
| --------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Threshold                   | Defines the maximum amount allowed per transaction for a certain user group. For example, the operators can approve an amount below 50,000 euros, but transactions above this threshold require additional approval. |
| Authorised users per amount | Defines user groups that are allowed to participate in transaction approvals.                                                                                                                                        |

\
