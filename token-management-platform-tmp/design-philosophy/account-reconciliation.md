# Account reconciliation

Token Management Platform has a customisable reconciliation process, supplying all address-related information in real-time, along with confirmed and unconfirmed balances. **** The reconciliation data is stored on the immutable RIDDLE\&CODE ledger. Reconciliation aims to create and submit the current balance per coin address at a certain frequency. In the case of the TMP, that frequency is once per 24 hours.

Internal settlement teams have read-only access that allows them to filter and view transactions and to extract the transferred amount and fees for settlement and reconciliation.

Transaction details, such as timestamps, individually and fully signed transactions, crypto protocol, amount and fees, source address, destination address and status, can be sent to an external database for archiving and settlement purposes.

The output covers the native amount per coin and not the value of the coin converted into FIAT currency (EURO, Swiss Franc, etc.). This output is sent via file (e.g., .csv) to an accessible file system hosted by the client or provided as a service by RIDDLE\&CODE.

The file contains the following data:

* account ID
* timestamp
* confirmed and unconfirmed balance
* coin type
* coin address
