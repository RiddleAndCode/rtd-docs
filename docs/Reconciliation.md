# Reconciliation

This add-on enables the operator to extent their current asset management solution with an automated reconciliation feature to streamline internal processes. The software package delivers a .csv-file with the following structure:

* Account ID
* Coin address
* Coin type
* Time stamp
* Confirmed Balance
* Unconfirmed balance

The services updates the .csv periodically with the balances.
Per default the periodically execution of the reconciliaction is performed every 24 hours after the initial boot up ot the Trusted Node 2.0

This .csv file is saved on the Trusted Node itself and can be recovered from there.

How to access the data.csv:

* Step 1: Logon the Trusted Node with the provided credentials
* Step 2: Navigate to the /home/dam/dam/data/data.csv

**Note:** If a different default update period or time is required please reach out to support@riddleandcode.com with your request