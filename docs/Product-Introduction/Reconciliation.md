# Reconciliation

## Summary

* The Token Management Platform provides the functionality to run a customisable reconciliation process, supplying all address-related information in real-time, along with confirmed and unconfirmed balances.

## Immutable record of reconciliation data

The reconciliation data are stored on the immutable Riddle&Code ledger. The ledger is designed to secure all critical operational processes and provide an easy-to-use solution to transparently store and access all relevant data.

RIDDLE&CODE’s Digital Asset Management Solution (TMP) provides a reconciliation feature to archive and keep track of balances for all derived accounts and currencies. The reconciliation aims to create and submit the current balance per coin address at a certain frequency. In the case of the TMP, that frequency is once per 24 hours.

Transaction details, such as timestamps, individually and fully signed transactions, crypto protocol, amount and fees, source address, destination address and status, can be sent to an external database for archiving and settlement purposes.

Internal settlement teams have read-only access that allows them to filter and view transactions and to extract the transferred amount and fees for settlement and reconciliation in the system.

The output covers the native amount per coin and not the value of the coin converted into FIAT currency (EURO, Swiss Franc, etc.). This output is sent via file (e.g., .csv) to an accessible file system hosted by the client or provided as a service by RIDDLE&CODE.

The file contains the following data:

* account ID
* timestamp
* confirmed and unconfirmed balance
* coin type
* coin address