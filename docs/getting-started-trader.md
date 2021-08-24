# Getting started guide for traders

This getting started guide contains an overview of the core operations for traders to perform with the Token Management Platform (TMP).

The TMP uses a role-based access and control (RBAC) system to associate permissions to roles and to specify access rights to the platform and any of its functionalities. This assures that only the user with the appropriate role and credentials can access certain areas of the platform. Roles are divided into two main functions: administrators and traders.

Administrators are the only ones who have access to the Policy Layer and control so-called critical actions—the assignment of roles and responsibilities, access rights to the platform, registering a user, adding new policies, etc.

Traders, or operators, can create transaction requests, approve transactions, add new accounts/addresses and block the transfer of funds to untrusted external accounts.

To access the TMP as a trader, you need an Approval Device and the link (e.g., customer-tmp.r3c.network) to the user interface. This link is provided by RIDDLE&CODE.

## Note: Reference System

RIDDLE&CODEs Token Management Platform enables the best user experience on the following reference system:

` Windows 10 pro, OS build 19041.985 in combination with Chrome Version 91.0.4472.77 `

Other operating systems and browser configurations are untested and officially not recommended. Please reach out to your single point of contact at RIDDLE&CODE for any inquiries about other system and browser configurations.


## Accessing the TMP - First steps

When accessing the TMP for the first time, you’ll have to use your Approval Device to:
1. Get the device ID and share it with the administrator,
2. Sign up,
3. Sign in, and
4. Set a personalised PIN.

The steps for performing these actions are described below.

## Get the device ID

Before signing up, you need to get the ID of the Approval Device you’ll be using. This ID must be shared with the administrator, who will add your device to the system. The steps are as follows:
1. Click **Sign Up**.
2. The device ID will be displayed on the interface.
3. Copy device ID and share it with your administrator.
4. The administrator will input the device ID.

After the administrator confirms that your device has been added, you can continue with the sign-up process.


## Sign up

When accessing the TMP interface for the first time, you have to sign up. The process is as follows:
1. Plug your Approval Device into a computer.
2. Click on the link provided to you by RIDDLE&CODE to open the sign-up page (e.g., customer-tmp.r3c.network)
3. Click **Sign up**.
4. Enter the default PIN (234) on your Approval Device.
5. Select your device (wallet) and click **Connect**.

You should see a message stating that you’ve successfully signed up. Now, it is time to sign in.


## Sign in

The steps to sign in are:
1. Plug your Approval Device into a computer.
2. Click **Sign in**.
3. Select your Approval Device (wallet) and click **Connect**.
4. Press the check mark on your device to complete the action.

You should see a message stating that you’ve successfully signed in.

But before you start adding new accounts, approving transactions, and other exciting stuff, you’ll have to change the default PIN (234) to a personalised one. Please bear in mind that this is a mandatory step for traders.


## Change PIN

The steps are as follows:
1. Go to *Settings* and in the dropdown menu click **User**.

![Change PIN](./new-screenshots/user-change-PIN.png)

2. Click **Change PIN**. You’ll see this question on your Approval Device: Do you really want to change your PIN?
3. Press the check mark to confirm that you want to change the PIN.
4. Enter the current PIN on your device.
5. Now enter the new PIN.
6. Re-enter the new PIN to confirm it.

The device will display a message that you have successfully changed your PIN. Next time you sign in to the TMP, you’ll use your new PIN.


## Firmware update

RIDDLE&CODE recommends that you always keep your Approval Device up to date for security and functionality purposes. To check and update your device, please do the following:
1. Head over to *Settings*.
2. In the dropdown menu, click **Firmware Update**.
3. Click **CHECK FOR UPDATE** to see if there is a need to update your device. If yes, follow the instructions displayed on the interface:
    * Unplug your Approval Device from the computer.
    * To enter the *Update mode*, plug in the USB cable while continuously moving your finger back and forth on the device’s screen.
    * Once in the *Update mode*, confirm the connection by tapping the green check mark.
    * Next, click **Update Firmware** (on the interface) and confirm the update on the device’s screen.
    * Once the update is complete, unplug the device from your computer and then connect it again.
    * Finally, click **UPDATE**.


## Manage customers’ accounts

### Create account for a new customer
Onboarding a new customer requires the creation of a new account. This is done by adding an internal account. You need to prepare a list of unique account IDs that are in a 32-bit hexadecimal format. The account ID serves as the derivation index.
The process is as follows:
1. Head over to *Addresses*.
2. Click **NEW ASSET** in the top right corner.

![Add new account](./new-screenshots/add-new-account.png)

3. On the right side, add an account ID to generate the address for the customer.
4. Click **Generate**.


### Add an external address as a trusted recipient
Before you can send funds to external addresses (e.g., brokers or exchanges), you need to add and mark the address as a trusted recipient. The steps are as follows:
1. Head over to *Addresses* and click **NEW ACCOUNT**.

![Add trusted recipient](./new-screenshots/add-trusted-recipient.png)

2. On the left side, enter Account ID.
3. Select currency.
4. Enter Address and click **Add**.

The address is now marked as a trusted recipient.


### View accounts
To view all the accounts within the system, navigate to *Addresses* in the top main menu. There, you can see the list of all accounts, which you can sort by clicking on the header of the preferred column. Please note that only one column can be sorted at a time. The columns include:
* Asset—the currency of the account.
* Account ID—the 8-digit hexadecimal identifier of the account.
* Address—the address of the account.
* Acc. typ—the account type.


### View the risk level of a coin address
NOTE: This only applies if you are using Coinfirm's AML services.

The risk level is a value between 0 and 100, where 0 is low and 100 is high.
To view the risk level of a coin address:
1. Visit *Addresses*.
2. Click on the dropdown menu next to the address whose risk level you want to check.
3. Click the AML Risk Report.

![Coin risk level](./new-screenshots/aml-risk-report.png)

You’ll be taken to the Coinfirm website where you can see the risk level of the address.



## Manage transactions

### Create transaction request
As a trader, you can create the transaction request and transfer funds from one address to another. Please note that, depending on the transaction amount, several traders may need to approve the request.
The process is as follows:
1. Visit *Settlement*.
2. Click **NEW TRANSACTION** in the top right corner.

![Create new transaction](./new-screenshots/new-transaction.png)

3. Select a currency that you want to transfer.
4. Select the sender’s account (risk value will be displayed).
5. Select the receiver’s account (risk value will be displayed).
6. Choose fees.
7. Enter the amount you want to transfer.
8. Click **Send**.

You have submitted the transaction request, which can now be approved or rejected.

## Available Currencies
Currencies used in TMP are labelled as:
* Orange Icons refer to public mainnets
* Grey Icons refer to public testnets
* Black Icons refer to R&C Testnets. 

| Icon | Name |
|-|-|
|<img src="./assets/currencies/tbtc.svg" width="50%">|Bitcoin Testnet|
|<img src="./assets/currencies/tltc.svg" width="50%">|Litecoin Testnet|
|<img src="./assets/currencies/tbch.svg" width="50%">|Bitcoin Cash Testnet|
|<img src="./assets/currencies/teth.svg" width="50%">|Ethereum Testnet Ropsten|
|<img src="./assets/currencies/btc.svg" width="50%">|Bitcoin|
|<img src="./assets/currencies/ltc.svg" width="50%">|Litecoin|
|<img src="./assets/currencies/bch.svg" width="50%">|Bitcoin Cash|
|<img src="./assets/currencies/eth.svg" width="50%">|Ethereum|
|<img src="./assets/currencies/txrp.svg" width="50%">|Ripple Testnet|
|<img src="./assets/currencies/rbtc.svg" width="50%">|R&C Testnet|

### View list of all transactions
To view the list of all transactions, navigate to **Settlement —> Order**. Here you can view the list of all (approved, expired or rejected) transactions, along with details like asset, address, amount, risk level, creation date, etc.
