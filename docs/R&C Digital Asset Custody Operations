# Signing of transaction


## Signing Process

Whenever a transaction is being created by an operator the following steps apply:

![Signing Architecture](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/Step%20by%20Step%20Process.png "Signing architecture")

1. Transactions are prepared and initiated via the web interface.

2. The Trusted Node initiates the related raw transaction with pending signatures and sends it to the signature devices for approval/signing.

3. Each signature device signs the raw transaction with its Shamir's secret slice. The number of signature devices can be configured (m of n) via the web interface.

4. The (optional) master signature device collects and decrypts the Shamir signatures, recovers the master secret, signs the transaction and sends it back to the Trusted Node. After that, the master secret is zeroized.

5. Finally, the Trusted Node broadcasts the signed transaction to the target blockchain/DLT.


## Create transaction:

NOTE: The container Id has to be added to the precalculated accounts in Maria DB (localhost:8080). Only then you will have valid accounts that you can use in the **Signing transaction** Tab. Admin devices are not required for this operation.

To create transaction, head over to the dropdown menu in the upper right corner. Click on the tab **Sign TX**.

Then, follow the next steps:
1. First, choose the currency you'll transact with
2. Next, choose accounts
3. And amount
4. Choose transaction speed
5. Click **Sign transaction**

Don't forget to take note of the transaction ID so you can follow if the transaction went through.
Depending on the amount of fees you chose, the transaction might be validated in the next 10 minutes or few hours. The higher the fees the faster the transaction will be confirmed

RIDDLE&CODE provides an integrated gas/fees calculation performed for all crypto currencies available in the Digital Asset Custody Solution.

The solution uses the publicly available kraken.com api (The solution uses the publicly available kraken.com api)

![alt text](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/fee.png "Fee estimates")

By choosing one of the defaults, the recommended amount of fees is automatically transferred to the fee input field.

Description of the recommendations:

* Economic - minimum required fees for a successful transaction with slower average execution time
* Normal - normal fee for a timely execution of a transaction
* Priority - higher then average fee for a priority execution of a transaction

Alternatively the user can manually enter the desired fee.


More information on the API can be found on https://www.kraken.com/features/api#public-market-data
To check if your transaction went through, you can open the Blockchain Explorer of the currency you were using. When you open the Explorer, search for your Transaction ID in the search bar.

For example:
* btc.r3c.network for Bitcoin
* tbtc.r3c.network for Bitcoin Testnet
