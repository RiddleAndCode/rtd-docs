# Presetup - Setting up Digital Asset Custody (DAC) on your NUC

## Important information before setting up DAC on your NUC
* Register your **Docker Hub account** by sending an e-mail to support@riddleandcode.com
* Use a wired keyboard for the first steps

Once you have that ready, it's time to start with the set up:

## Download the Bios Update
1. Go to: https://downloadcenter.intel.com/de/?wapkw=quicklink:download-center
2. Type the Product Code of your Nuc into the search bar and press Enter.
3. Choose **‘OS Independent’**
4. Choose the **Bios Option**
5. Download .bio update
6. Put it on a Flash drive with FAT formatting


## Update the BIOS
1. Insert Flash drive
2. Start NUC and wait until you see Intel Nuc Logo on the Screen
3. Press F7
4. Select **Flash Update**

NUC will shut down by itself. Wait a few minutes until the NUC restores.


## Select Boot option
1. Wait until you see Intel Nuc Logo on the Screen
2. Press F2
3. Click on **Advanced**
4. Boot -> Boot Configuration -> UEFI Boot -> OS Selection -> Linux
5. Boot -> Secure Boot -> Install Intel Platform Key
6. Press F10 (Save and exit)
7. Confirm


## Install Ubuntu
1. Insert Flash drive with bootable Ubuntu on it
2. Start Nuc and wait until you see Intel Nuc on the Screen
3. Press **F10**. In case you see a black screen, press **ESC** and then **F10**
4. Select **Flash Drive** (USB) and press **Enter**
5. Select **Install Ubuntu** and press **Enter**
6. Now, follow the instructions shown in the Ubuntur's install window. Minimal installation is enough.

7. Enter info
   * Your name: dam
   * Computer’s name (host): r3c-dam-<CUSTOMER>-<NUM (2 digits)>
   * user: dam
   * password: choose your own password
   * If you received a NUC from R&C request the default password

8. Install OpenSSH server
9. Install Chrome and add to favorites; remove Firefox from favorites

**OPTIONAL:** Login / ssh into Nuc from your Laptop with following steps:
    * `ssh -A dam@<IP Address of NUC>`
    * `<password of Nuc> `

10.`sudo apt install make`
11.`sudo apt install git`
12.Create docker hub account and pass it to RIDDLE&CODE
13.`git clone https://github.com/RiddleAndCode/dam-setup.git`
14.`cd dam-setup`
15.`git checkout dcap`
16.Copy in the `settings.json` and the `docker-compose.yml` sent to you into `~/dam-setup/settings.json` and `~/dam-setup/docker-compose.yml` respectively


### Part 1 of the installation
1. `make part1` inside the dam-setup folder
2. You may get asked to enter a MOK password for the Secure Boot configuration. If that happens, follow the next steps:
     * Enroll Secure boot keys
     * Choose **MOK password** and confirm
     * Reboot system ‘sudo reboot’
     * Quickly press any key. Otherwise, you will have to do the **Part 1 of the installation** again
     * Select **Enroll MOK**
     * Select **Continue**
     * Select **Yes**
     * Enter the password
     * Select **Reboot**


### Part 2 of the installation

In this part you will get the PCCS API key. To do that, go through the following steps:
1. Go to`https://api.portal.trustedservices.intel.com/` and get registered
2. After your registration is confirmed go to: https://api.portal.trustedservices.intel.com/
3. Click on **Intel® SGX provisioning certification service**
4. Click **Subscribe**
5. Click **Subscribe** again
6. `cd dam-setup`
7. Use Primary key from Provisioning Certification Service as API_KEY


## Verify installation
1. Reboot system
2. Check DAM service status and logs
    * `sudo service dam status`
         * Should show: active (running)
         * Exit with **Ctrl+C**
    * `journalctl -u dam.service`
    * Exit with **Ctrl+C**


    # Admin area

    ![Architecture](https://raw.githubusercontent.com/RiddleAndCode/rtd-docs/master/assets/landingpage.png "landingpage.png")

    To access the admin area, two Admin Devices have to be connected to the Trusted Node.

    Admin area hosts the following pages:
    * **Settings**, where you can manage all internal systems that communicate with the digital asset custody solution.
    * [Define signing quorum](#define-signing-quorum), where you can define the number of signature devices required to sing transactions and manage funds.
    * [Set master device](#set-up-master-device), where you can select a device to act as a master signature device. This device orchestrates the signing process between the signature devices of the defined quorum.
    * [Change PIN](#Change/PIN), where you can select the device to change PIN.
    * [Precalculate accounts](#precalculate/accounts), where you can create new accounts and generate their respective addresses per currency.
    * [Policy configurator](#policy/configurator) - a set of rules that can be defined by the client. The underlying rules govern the transactions and how they are executed.
    * [Update addresses](#update/addresses), where you can select cryptocurrency and update addresses.
    * [Set device label](#set/device/label), where you can select a device to change its associated name.
    * **Prove address ownership**, where you can prove ownership and issue regulatory compliant statements on the ownership of all coin addresses managed through the solution.




    # Admin devices

    *Important information before starting with admin devices setup*:
    * Always keep an eye on devices. They will need your attention through the entire process
    * Confirmation is done by clicking the button on the device
    * Only go to the next step if the following points are all done:
         1. Both buttons in top right corner are green
         2. There is no text **We are connecting to the devices** next to the green buttons
         3. All Admin Devices are showing the RIDDLE&CODE logo
         4. If Admin Device button are pressed and hold down, they show their Public key
         5. After you reload the page you will get the message “We are connecting to the devices.” Don't refresh the page if it is still there, because that will most likely going to lock the Admin Devices.


    ## Admin devices setup

    1. Connect the Devices that you want to be set as Admin Devices (2 or more) to the Trusted Node 2.0 (NUC)
    2. Wait until all devices show RIDDLE&CODE’s logo
    3. Enter the URL **http://localhost:5000/#/admin-set-up** in Chrome to set up the Admin Devices
    4. In the dropdown menu, select one of the two Admin Devices to be the master device.
    5. In case the dropdown menu is not showing any options do one of the following steps:
         * Refresh the page and check if devices need you attention, or
         * Reset Trusted Node, plug devices out and in again and wait until you get asked to enter the Pins of the devices
    6. Select **New signing quorum**
    7. Enter **total number of slices:** 2
    8. Enter **minimum number of slices to sign:** 2
    9. Click **Create**
    10.Perform key Ceremony (always check if devices need your attention!)
    11.After the key ceremony was successful, the Public Key will be shown on the interface. Note it down and send to support@riddleandcode.com. You’ll receive an updated docker-compose.yml file with the Public Key provisioned to the policy layer.


    ## Refresh the Trusted Node

    1. Log in to your Trusted Node (NUC)
    2. Copy the updated docker-compose.yml file sent by RIDDLE&CODE into the folder ‘/home/dam/dam’
    3. Run issue bash-command: `/home/dam/dam/update.sh`
    4. After the update has been processed issue bash-command: `sudo service dam restart` (Update the Trusted node container with the SGX enabled Public key)


    ## Finalize the Admin Devices set-up

    ### Set-up the Master Device:
    1. Connect the devices that you earlier set to be Admin Devices to the Trusted Node 2.0 (NUC)
    2. Wait until devices are fully booted and showing R&C logo
    3. Enter the URL **http://localhost:5000/#/admin-set-master** in Chrome to set up the Master of the Admin devices
    4. Select one of the two Admin Devices to be the Master Device in the dropdown menu

        * If the dropdown menu is not showing any options do one of the following steps:
              * Refresh the page, check if devices need you attention
              * OR reset trusted node, plug devices out and in again, wait until you get asked to enter the Pins of the devices

    5. Click **Select**

    The Admin Menu should be available now.

    If it is not available, click on the RIDDLE&CODE logo in the top right corner. This will bring you back to the main page. After the page is done loading and all devices are showing the logo, the Admin Menu should be available in the top right corner.
