# Manual for setting up the Trusted Node and signature devices 

- [Manual](#manual)
  - [Set Up](#set-up)
  - [Web Interface](#web-interface)
  - [Settings](#settings)
      - [Database](#database)
      - [Currencies:](#currencies)
      - [IMPORTANT: To apply changes, the trusted node executable has to be restarted.](#important-to-apply-changes-the-trusted-node-executable-has-to-be-restarted)
  - [PIN Change](#pin-change)
  - [Creation of Shamir Family](#creation-of-shamir-family)
  - [Precalculation of accounts](#precalculation-of-accounts)
  - [Update addresses](#update-addresses)
  - [Transaction](#transaction)
  - [Additional Information](#additional-information)
    - [Confirmation on hardware devices: Yes or No](#confirmation-on-hardware-devices-yes-or-no)
    - [Insert PIN](#insert-pin)
    - [Check device identiy](#check-device-identiy)
    - [Account Management](#account-management)

## Set Up of the trusted node
```
ssh ubilinux@TRUSTED_NODE_IP_ADDRESS 
cd trusted-node
docker-compose up -d
export RNC_TRUSTED_NODE_PATH_TO_SETTINGS=/home/ubilinux/trusted-node
./trusted-node start
```
---
## Web Interface
1. Web interface can be found at https://TRUSTED_NODE_IP_ADDRESS:5000
2. Database symbol (left side of Home button) should be green. If red, please check that the database connection is up.

---
## Settings

Trusted node comes with a database (MariaDB), syslog (graylog) and phpmyadmin (port 8080) locally set up. [Blockbook](https://github.com/trezor/blockbook/) nodes for each currency need to be provided.

Hover **Admin** button, and click **Settings**.

#### Database
DB SID and DB mode fields are used only for Oracle DB, however they should still be filled with  literally anything.
#### Currencies:
For each one, provide the [Blockbook](https://github.com/trezor/blockbook/) address and port. 

Example:
- Address: eval.riddleandcode.com (make sure **it is not** **https://** eval.riddleandcode.com)
- Port: 9130

#### IMPORTANT: To apply changes, the trusted node executable has to be restarted.
   
---
## PIN Change
1. Connect one or more devices to the trusted node. (Recommended: one)
2. Hover **Admin** button, and click **Change Pin**
3. You will be asked for the current PIN. (**See: [Insert Pin](#insert-pin)**)
   1. If it's the first time, default pin is **11111**.
4. Choose from the dropdown list the device you want to change the pin.
5. Click the button **Change pin**, and follow the steps. [Current PIN -> New Pin -> New Pin Again -> New PIN (for starting session)]

---
## Creation of new Signing quorum
Example: 2 (Master Device + 1) out of 5.

1. Connect all 5 devices to trusted node.
2. Make sure all devices show the Riddle & Code logo before proceeding.
3. Hover **Admin** button, and click **Generate Shamir Family**.
4. All devices will be asked for the PIN. (**See: [Insert Pin](#insert-pin)**)
   1. If it doesn't happen or the dropdown list doesn't show all 5 devices, refresh the page.
5. From the dropdown list **choose the master device**. (**See: [Device identity](#check-device-identiy)**)
6. Place a mnemonic phrase if you have one (**Recovery**).
7. Fill the **Total number of slices** (5)
8. Fill the **Minimum number of slices** (2)
9.  Click **Generate Shamir** button, and redirect your attention to the master device.
10. Master device:
    1.  The master device will be prompted **"Generate Shamir Secrets?"**. Click the button to confirm.
    2.  You may be asked to confirm the identity of the other devices. (**See: [Device identity](#check-device-identiy)**). Click the button to confirm them.
    3.  If no mnemonic is provided (**Recovery**), you will be asked to confirm the newly generated mnemonic phrase, word by word. Each word will be shown only once. Click the button to confirm each of them.
    4.  Redirect your attention to the slave devices.
11. Slave device(s):
    1.  You will be prompted for **"Store key slice?"**
    2.  You may be asked to confirm the identity of the master device. (**See: [Device identity](#check-device-identiy)**)
    3.  Redirect your attention to the web interface.
12. After some time, a successful green message should appear.

---
## Precalculation of accounts

This will create new accounts, and generate their respective addresses per currency
Each account has one derivation path per currency. Example: m/44'/1'/3'/0/0 -> Account: 3(3') Currency: Testnet(1')

1. Connect at least 2 devices, including the Master Device.
2. Hover **Admin** button, and click **Precalculate account addresses**.
3. Fill the desired number of new accounts.
4. Click **Generate Addresses** button. Redirect your attention to the devices.
5. You will be prompted for confirmation on each device: Example (for 3 accounts):
   1. From: m/44'/1'/1'/0/0 To m/44'/1'/3'/0/0
   2. You have to confirm the range of generated addresses for each currency.
   3. A green successful notification will be shown.

---
## Update addresses
Used to update the **existing** accounts with a specific currency address. Example: adding support to a new currency.
1. Connect at least 2 devices, including the Master Device.
2. Hover **Admin** button, and click **Update Addresses**.
3. Select the **Cryptocurrency**.
4. Press **Update Addresses** button.
5. Follow step five from [Precalculation of accounts](#precalculation-of-accounts).
   
---
## Transaction
1. Connect at least 2 devices, including the Master Device.
2. Click **Create&Sign Tx**.
3. Select the desired **Cryptocurrency**.
4. Select the Sender Account **ID** (**See:[Account Management]()**)
5. Select the Receiver Account **ID** (**See:[Account Management]()**)
6. Select the desired **amount**.
   1. Value in its base unit. Example: bitcoin instead of satoshi.
7. Select the desired **fees**:
   1. Value in its base unit. Example: ether instead of wei.
   2. For **Ethereum** networks, a **gas price** is expected.
8. Press the **Sign Transaction** button. Redirect your attention to the devices.
9. Per connected device:
   1.  **"Click the button to start a shamir transaction"** will be shown and await for confirmation.
   2.  All the inputs, outputs and fees will be asked and await confirmation.
10. Once sucessful, a green box message will be shown with the transaction ID.

---
## Additional Information
### Confirmation on hardware devices: Yes or No
- Yes: Click the button
- No: Press the button for 5 seconds.

### Insert PIN
1. In the beginning or expiration of a device session, the PIN will be asked to perform any operation.
2. A shuffled digit pad will be shown on the device screen.
3. A positional pad will be shown on the web interface.
4. Match the position of digits shown on the device.
5. If PIN mismatches, the device will freeze and will need to be physically reconnected.

### Check device identiy
You can check the identity of each hardware device, by pressing its button when it's in an idle state.

### Account Management
In the database there is a table called Account with two columns: Account ID and Container ID. 

The table grows when precalculation of accounts is executed. The account ID column is automatically incremented, **however** container ID is always 0. It requires to be filled manually using a database management tool (eg: phpmyadmin). Without this step, making a [Transaction](#transaction) will be impossible.
