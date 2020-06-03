# Admin Menu Operations

## Define Signing Quorum

![Architecture](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/definesigningquroum.png "definesigningquroum.png")

1. Connect all devices (Admin Devices and Signature Devices) to the Trusted Node
2. Wait until devices are fully booted (showing RIDDLE&CODE logo)
3. Unlock all devices with their pin
4. In the dropdown menu, select one of the two Admin Devices to be the Master Device

5. If the dropdown menu is not showing any options do one of the following steps:
     * Refresh the page, check if devices need you attention
     * OR reset the Trusted Node, plug devices in and out, and wait until you get asked to enter the devices' PINs

6. Set the Master Device
7. Define the **total amount of slices**
8. Set the **minimum number of slices**
9. Click **Create**
10.Perform key ceremony


## Precalculate Account Addresses:

1. Choose the amount of Accounts you want to precalculate

    * If you only want to create transactions with certain currencies, you have the option to disable the other currencies. Here is how to do that:
           * Open a new Tab and go to localhost:8080
           * Login with root/changeme
           * Go to **Currencies** and delete the currencies you want to disable
           * Then, go back to the web interface to continue with account addresses precalculation

2. Click precalculate
3. Wait for instructions on the devices. Depending on the amount of currencies. It might take some time.
4. After you're done with "Precalculation", go to localhost:8080 and add container Id to all precalculated accounts.


           ## Policy configurator

           Policy configurator allows you to define and set the rules that govern the transactions and how they are executed. The policy is protected and executed inside the Trusted Execution Environment (TEE) and each change requires the AD to sign the change.

           ![Architecture](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/policyconfigurator.png "policyconfigurator.png")

               Here are the examples of policies that can be set:
                  1. Time-based policy: e.g. transaction will be signed within two hours
                  2. Whitelisting/blacklisting: perform transactions only with whitelisted addresses.
                  3. Total trade value limit: per day, week, or month.
                  4. Nationality: you can restrict transfers to a specific country.


           ## Update addresses
           1. Connect at least 2 devices, including the Master Device
           2. Hover **Admin** button, and click **Update Addresses**
           3. Select the **Cryptocurrency**
           4. Press **Update Addresses** button



           ## Change PIN
           1. Connect one or more devices to the Trusted Node (our recommendation is to connect one device)
           2. Hover **Admin** button, and click **Change Pin**
           3. You will be asked for the current PIN.
               * If it's the first time, default pin is **11111**.
           4. From the dropdown list choose the device you want to change the pin.
           5. Click the button **Change pin**, and follow the steps:
              * Current PIN -> New Pin -> New Pin Again -> New PIN (for starting session)


           ## Set device labels

           1. Go to the dropdown list in the upper right corner and choose the device you want to set a label on
           2. Double check on the device to see if the Public Key of the device fits the one you chose by pressing the button of the device (more than one second)
           3. Name it (for example: C-Level). This name will now be displayed in the Policy Configuration Tab.
