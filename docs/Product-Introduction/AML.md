# AML service by Coinfirm

**Summary**

* The Token Management Platform provides clients with a built-in Anti Money Laundering (AML) service powered by Coinfirm. The client is free to choose another AML provider, but the advantage of Coinfirm is that the API and the service are already built-in and does not require additional implementation on the client’s side. If a client decides to use Coinfirm’s AML service, it will require a paid subscription based on Coinfirm’s product pricing.
* All outgoing and incoming transactions are registered and verified, and any asset with a suspicious origin is flagged for a review.
* This document describes Coinfirm’s AML integration process.

**Anti Money Laundering (AML)** is a complex framework of strategies, rules and regulations that refers to the measures used by financial institutions and governments to prevent and combat financial crimes, especially money laundering and terrorism financing. **Know Your Customer (KYC)** is a component part of AML that identifies and authenticates the customers of financial institutions based on their perceived risk profile.

AML regulations require companies to submit risk reports, perform diligence processes and report suspicious activities. Incorporating these procedures is a centerpiece for companies that aim to manage digital assets in a secure manner that complies with regulatory frameworks.

RIDDLE&CODE integrates the services provided by leading blockchain analytics platform, Coinfirm, to the Digital Asset Management Solution.

## Coinfirm - real time analytics and compliance risk management

**Coinfirm** is a global leader in AML and regulatory technology for blockchain and cryptocurrencies. It offers the industry’s largest blockchain coverage, supporting over 1,500 cryptocurrencies and protocols, including Bitcoin, Ethereum, Hyperledger, and many more.

Coinfirm’s AML platform consists of 270+ risk indicators able to catch nefarious actors with red flags for anything from Anti Money Laundering (AML) and Countering the Financing of Terrorism (CTF) to combatting fraud and dark net drug trafficking. Alongside this array of indicators, Coinfirm boasts the largest coverage of cryptocurrencies being monitored in the blockchain space.

All coin addresses that are managed by the Digital Asset Management Solution are registered to the monitoring system automatically, using the provided API from Coinfirm. Once registered to the monitoring system, the risk level of coin addresses is calculated by Coinfirm’s forensic algorithm in regular time intervals and after each incoming transaction.

The service will continuously monitor all coin addresses and alert the client in case of unexpected behaviour or detection of fraud.

This process allows clients to analyse coin addresses in several ways.

##Incoming transactions

**1. Continuous monitoring of all coin addresses: trusted recipients and coin addresses under custody**
When funds are sent to one of the coin addresses managed by RIDDLE&CODE’s solution, Coinfirm will recognise if the incoming transaction will have an impact on the risk level of the coin address.


**2. Alerting in case of unexpected behavior or detection of fraud**
The Coinfirm platform offers a notification feature that can be configured with a set of parameters to inform users via email if transactions have a critical impact on a coin address. The notifications will be sent directly by Coinfirm.

## Outgoing transactions

During a transaction signing request, a client can select the receiver and the sender address for a transaction. On selection, the risk level of both coin addresses will be retrieved from Coinfirm and displayed to the user.

Notifications are sent to the client if fraudulent activities related to one or several addresses are detected. Prior to transaction signing, the user can request a report about the details and the state of the recipient of the transaction. All derived coin addresses of accounts and trusted recipients are listed in tables. For each coin address, the risk level is shown, along with a deep link that forwards the user to Coinfirm’s monitoring panel to retrieve more detailed information about the given coin address.

**The following products are available at Coinfirm’s AML/KYC platform:**

# AML Risk Reports

The key functionality of Coinfirm’s AML/KYC platform is the possibility of generating AML/KYC Risk Reports that evaluate money laundering risk for blockchain addresses and their owners. These reports can be downloaded as PDF documents for regulatory compliance purposes.

Risk Reports may be Basic, Standard or Enhanced.

|Report element | Enhanced (Web/pdf/API) | Standard (Web/pdf/API)|Basic ('C-Score Report') (Monitoring Panel/API) |
|----------------|:----------------------:|:-------------------------:|:------------------------:|
|Report ID, date and block height | Yes | Yes | Yes| 
|Address summary (balance in crypto and in USD, tokens) | Yes | Balance in crypto and USD | USD Balance in crypto| 
|Profile analysis and summary | Yes | No | No| 
|C-Score | Yes | Yes | Yes| 
|C-Score analysis and summary | Yes | No | No| 
|Risk Level | Yes | Yes | Yes| 
|Network Membership | Yes | Yes | Yes| 
|List of identified risks | Yes | No | No| 
|List of informative flags | Yes | No | No| 
|Assets/tokens analysis and summary | Yes | No | No| 
|Financial analysis | Yes | No | No| 
|Dark web connections | Yes | No | No| 
|Appendix 1 – Risk Indicators | Yes | Category and subcategory | No| 
|Appendix 2 – Financial analysis and summary | Yes | No | No| 
|Appendix 3 – List of Assets/Tokens | Yes | No | No| 
|Disclaimer | Yes | Yes | Yes| 
|Glossary | Yes | Yes | Yes| 


## Monitoring Panel

The Monitoring Panel is a feature of the Platform that enables users to monitor and be alerted on AML risk in real-time for all provided addresses and related transactions. The Monitoring Panel include:

* **Wallet View** - provides the current risk scoring for monitored wallet addresses, navigates to wallet address details and displays information about new notifications. By default, the risk scoring is recalculated after each transaction and at least once daily.
Transaction View - provides information in real time about all incoming and outgoing transactions on monitored addresses that transfer value. It also provides the recalculated C-Score after each such transaction.

* **Archive** - provides the list of all archived addresses that have been previously monitored and the option to renew them.

* **Notifications** - provides the list of all notifications for each monitored address.

* **Settings** - provides option to set up notifications and risk recalculation frequency.

* **Notification Bell** - on the top of the tool page, provides information about all new, unread notifications on each monitored address.

## Visual Analysis Tool - Visualiser

The Visualiser tool allows users to visually track the flow of funds and provide evidence in the form of a graph of transactions between the cryptocurrency addresses within selected cryptocurrency networks. The Visualiser is equipped with automated source of funds and destination of funds transaction tracking, even across hundreds of consecutive blockchain transactions.

## Case Management Tool

The Case Management tool on the Coinfirm AML Platform allows users to keep track of progress and document investigations performed. It supports case analysis workflow, including case QA and supervisor review.

The Case Management tool also allows for investigations and evidence collection for addresses from blockchains supported by the AML Platform. There are two case management options:
1. 4-eye verification process—each case is analysed by an Analyst, Analyst QA and a Supervisor. Users receive an email communication when the case  is created or moved to the next step according to the user role in the process.
2. 2-eye verification process—each case is analysed by an Analyst and a Supervisor. Users receive an email communication when the case is created or moved to the next step according to the user role in the process.  

During the process, users can add files from the AML Platform or their computers and attach notes tied to identified risk indicators in addition to general and recommendation notes.

**NOTE:** The client is free to choose another AML provider, but the advantage of Coinfirm is that the API and the service are already built-in and does not require additional implementation on the client’s side. If a client decides to use Coinfirm’s AML service, it will require a paid subscription based on Coinfirm’s product pricing.

## Integrating Coinfirm’s AML/KYC services

## Create account and register coin addresses at the Coinfirm platform

IMAGE MISSING

Fig1. Flow Diagram of account and address registration

To create a new account in the system, the user needs to enter a 32bit integer in hexadecimal format into the frontend. A request will be sent to RIDDLE&CODE’s solution that will derive, based on the provided number and a derivation seed, coin addresses for each supported currency. The derived addresses will be sent to the CoinfirmConnector, which handles the interaction with the services supported by Coinfirm. Each coin address will be registered to the monitoring system of Coinfirm.

## Adding of trusted recipient

The user provides an account ID in the 32bit integer hexadecimal format and a coin address. If there is no account with the provided account ID, the system will generate a new account and add the provided coin address. The coin address will be sent to the CoinfirmConnector and further to the services of Coinfirm where it is added to the monitoring system.

## Creating the transaction and retrieving risk levels

IMAGE MISSING

Fig2. Flow Diagram of Transaction verification

In order to create a transaction, a user has to visit the sign transaction page and enter the IDs of the accounts to be used in the transaction. Based on the currency and the ID of an account, the associated coin address will be retrieved. The coin address is then sent to the CoinfirmConnector, which uses the Coinfirm API to retrieve the latest risk level. The risk level will be shown to the user as a number between 0 and 100, where 0 means low risk and 100 means high risk.

This flow is done for the sender as well as for the receiver account. Based on the information, a user can decide if a transaction should be signed or not.

## Integrated Coinfirm API endpoints

* A detailed API description can be found under the following link. For the authentication to the API bearer tokens are used: https://app.swaggerhub.com/apis/Coinfirm-swagger/API/3.0.4#/
* To authenticate to the API and to retrieve a bearer token, please visit the following link: https://app.swaggerhub.com/apis/Coinfirm-swagger/API/3.0.4#/Auth/post_auth_login
* To get the latest information about a registered coin address: https://app.swaggerhub.com/apis/Coinfirm-swagger/API/3.0.4#/Monitoring panel/post_panels_monitoring_wallet_addresses
