#Product Description



# Introduction
- [Intro](#intro)
  - [Unique selling proposition](#USP)
  - [Web Interface](#web-interface)
  - [Settings](#settings)
      - [Database](#database)
      - [Currencies:](#currencies)
      - [IMPORTANT: To apply changes, the trusted node executable has to be restarted.](#important-to-apply-changes-the-trusted-node-executable-has-to-be-restarted)

## Introduction
RIDDLE&CODE developed a new breed of digital asset management solution. It enables institutions, banks, family offices, traders and exchanges to buy/sell/trade cryptocurrencies and tokens and offer this service to its clients within the framework of the custodian model.  
Our solution underwent meticulous audit processes by renown international audit firms and received acceptance from Swiss regulatory bodies. Next to an innovative architecture of the core functionality of a wallet – to create and secure keys - the solution excels in providing the related business logic and policy layer to allow integration into regulated processes including full audit trails. 

## USP

In view of regular security breaches of existing digital asset management solutions, RIDDLE&CODE developed a new generation of hardware wallets with a set of innovative features and functionalities.

![alt text](https://github.com/RiddleAndCode/trusted-node-manuals/blob/master/assets/USP.png "USP")


## Product principles 

**Your keys, your tokens**: We only develop the tools to manage and secure assets and private keys. We do not claim any kind of custody or ownership on any type of currency or token managed with our digital asset management solution.

**Algorithmic flexibility**: The solution design must allow to integrate new crypto algorithms to the hardware wallets in reliable and fast implementation cycles in order to cope with the required speed of future crypto-asset innovation.

**Peer reviews**: The complexity of cryptography related developments requires constant reviews and research. Closed systems can't deliver the necessary trustworthiness any longer. Our solution follows a strict open-source hardware and software approach and is completely transparent. Code and hardware designs are made public and are shared with our clients. 

**Code and product sovereignty**: Based on the mentioned open source and open hardware approach customers are in control of the solution. At any time, they can fork and even own our developments. There is no vendor lock-in. 

**Transient business models**: The relationship between business and customers is shifting. New business platforms have to enable customers the very same way they enable corporations. It is not possible to outfit every customer of a financial institute with a multi-thousand-dollar HSM. But it is necessary to protect customer interactions, accounts and assets with hardware wallets - without trade-offs in security and operationalizability. 

**Multi-purpose secure devices (signature devices)**: Our hardware wallets can also be used for other security-sensitive online activities. Logins with U2F, managing trust certificates on customer level, co-key-management with customers, secure self-encoding data storage for customers, etc.  are only some examples for the broad range of possible extensions. 

**Support of non-fungible, physical assets classes** : Development of our digital asset management solution not only focused on cryptocurrencies but also incorporated a design to support the emerging tokenised economy incl. the related secure tagging and chipping of physical objects. 

**Compliance** : We aim for full compliance with legal and regulatory provisions.
---
## Architecture
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


