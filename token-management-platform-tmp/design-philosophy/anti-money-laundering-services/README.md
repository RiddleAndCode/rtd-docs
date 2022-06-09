# Anti-money laundering services

Token Management Platform provides clients with a built-in anti-money laundering (AML) service powered by Coinfirm. The client is free to choose another AML provider, but the advantage of Coinfirm is that the API and the service are already built-in and does not require additional implementation on the client’s side. If a client decides to use Coinfirm’s AML service, it will require a paid subscription based on Coinfirm’s product pricing.

Anti-money laundering is a complex framework of strategies, rules and regulations that refers to the measures used by financial institutions and governments to prevent and combat financial crimes, especially money laundering and terrorism financing. Know Your Customer (KYC) is a component part of AML that identifies the customers of financial institutions based on their perceived risk profile.

AML regulations require companies to submit risk reports, perform diligence processes and report suspicious activities. Incorporating these procedures is crucial for companies that aim to manage digital assets in a secure and regulatory compliant manner.

For these purposes, RIDDLE\&CODE integrates the services provided by leading blockchain analytics platform, Coinfirm, to the Token Management Platform.



### **Coinfirm - real time analytics and compliance risk management**

**Coinfirm** is a global leader in AML and regulatory technology for blockchain and cryptocurrencies. It offers the industry’s largest blockchain coverage, supporting over 1,500 cryptocurrencies and protocols, including Bitcoin, Ethereum, Hyperledger, and many more.

Coinfirm’s AML platform consists of 270+ risk indicators that are able to catch nefarious actors with red flags for anything from anti-money laundering and countering the financing of terrorism  to combatting fraud and dark net drug trafficking. Alongside this array of indicators, Coinfirm boasts the largest coverage of cryptocurrencies being monitored in the blockchain space.

All coin addresses that are managed by the Token Management Platform are registered to the monitoring system automatically, using the API provided by Coinfirm. Once registered to the monitoring system, the risk level of coin addresses is calculated by Coinfirm’s forensic algorithm in regular time intervals and after each incoming transaction.

The service will continuously monitor all coin addresses and alert clients in case of unexpected behaviour or detection of fraud.

This process allows clients to analyse coin addresses in several ways.

#### **Incoming transactions**

**1. **_**Continuous monitoring of all coin addresses: trusted recipients and coin addresses under custody.**_ When funds are sent to one of the coin addresses managed by TMP, Coinfirm will recognise if the incoming transaction will have an impact on the risk level of the coin address.

**2. **_**Alerting in case of unexpected behaviour or detection of fraud.**_** ** Coinfirm offers a notification feature that can be configured with a set of parameters to inform users via email if transactions have a critical impact on a coin address. The notifications will be sent directly by Coinfirm.

#### **Outgoing transactions**

During a transaction signing request, a client can select the _receiver_ and _sender_ address for a transaction. On selection, the risk level of both coin addresses will be retrieved from Coinfirm and displayed.

Notifications are sent to clients if fraudulent activities related to one or several addresses are detected. Prior to transaction signing, clients can request a report about the details and the state of the recipient of the transaction. All derived coin addresses of accounts and trusted recipients are listed in tables. For each coin address, the risk level is shown, along with a deep link that forwards the user to Coinfirm’s monitoring panel to retrieve more detailed information about the given coin address.



**The following products are available at Coinfirm’s AML/KYC platform:**

### **AML Risk Reports**

The key functionality of Coinfirm’s AML/KYC platform is the possibility of generating AML/KYC Risk Reports that evaluate money laundering risk for blockchain addresses and their owners. These reports can be downloaded as PDF documents for regulatory compliance purposes.

Risk Reports may be **Basic, Standard** or **Enhanced**.



| Report element                                         | Enhanced (Web/pdf/API) |   Standard (Web/pdf/API)  | Basic ('C-Score Report') (Monitoring Panel/API) |
| ------------------------------------------------------ | :--------------------: | :-----------------------: | :---------------------------------------------: |
| Report ID, date and block height                       |           Yes          |            Yes            |                       Yes                       |
| Address summary (balance in crypto and in USD, tokens) |           Yes          | Balance in crypto and USD |                   USD Balance                   |
| Profile analysis and summary                           |           Yes          |             No            |                        No                       |
| C-Score                                                |           Yes          |            Yes            |                       Yes                       |
| C-Score analysis and summary                           |           Yes          |             No            |                        No                       |
| Risk Level                                             |           Yes          |            Yes            |                       Yes                       |
| Network Membership                                     |           Yes          |            Yes            |                       Yes                       |
| List of identified risks                               |           Yes          |             No            |                        No                       |
| List of informative flags                              |           Yes          |             No            |                        No                       |
| Assets/tokens analysis and summary                     |           Yes          |             No            |                        No                       |
| Financial analysis                                     |           Yes          |             No            |                        No                       |
| Dark web connections                                   |           Yes          |             No            |                        No                       |
| Appendix 1 – Risk Indicators                           |           Yes          |  Category and subcategory |                        No                       |
| Appendix 2 – Financial analysis and summary            |           Yes          |             No            |                        No                       |
| Appendix 3 – List of Assets/Tokens                     |           Yes          |             No            |                        No                       |
| Disclaimer                                             |           Yes          |            Yes            |                       Yes                       |
| Glossary                                               |           Yes          |            Yes            |                       Yes                       |

****

### **Monitoring Panel**

Monitoring Panel is a feature that enables users to monitor and be alerted on AML risk in real-time for all provided addresses and related transactions. The Monitoring Panel includes:

* **Wallet View** - provides the current risk scoring for monitored wallet addresses, navigates to wallet address details and displays information about new notifications. By default, the risk scoring is recalculated after each transaction and at least once daily.&#x20;
* **Transaction View** - provides information in real time about all incoming and outgoing transactions on monitored addresses that transfer value. It also provides the recalculated C-Score after each such transaction.
* **Archive** - provides the list of all archived addresses that have been previously monitored and the option to renew them.
* **Notifications** - provides the list of all notifications for each monitored address.
* **Settings** - provides option to set up notifications and risk recalculation frequency.
* **Notification Bell** - on the top of the tool page, provides information about all new, unread notifications on each monitored address.



### **Visual Analysis Tool - Visualiser**

Visualiser allows users to visually track the flow of funds and provides evidence in the form of a graph of transactions between the cryptocurrency addresses within selected cryptocurrency networks. The Visualiser is equipped with automated source of funds and destination of funds transaction tracking, even across hundreds of consecutive blockchain transactions.



### **Case Management Tool**

Case Management allows users to keep track of progress and document investigations performed. It supports case analysis workflow, including case QA and supervisor review.

The Case Management tool also allows for investigations and evidence collection for addresses from blockchains supported by the AML Platform. There are two case management options:

* 4-eye verification process—each case is analysed by an Analyst, Analyst QA and a Supervisor. Users receive an email when the case is created or moved to the next step according to the user role in the process.
* 2-eye verification process—each case is analysed by an Analyst and a Supervisor. Users receive an email when the case is created or moved to the next step according to the user role in the process.

During the process, users can add files from the AML Platform or their computers and attach notes tied to identified risk indicators in addition to general and recommendation notes.

****





\


****

\


