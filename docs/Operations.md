# Operations

- [Audit logs](#audit-logs)
- [Reconcilliation](#reconcilliation)
- [Key Management](#key-management)
- [Business Logics](#business-logics)
- [Enterprise support](#enterprise-support)
- [Available currencies](#available-currencies)


## Audit Logs

Our solution is fully deployed at a Swiss Bank and is in the process of being integrated at one of the biggest players in the European banking industry (undisclosed). Following an in-depth technical audit by a renowned Swiss security outlet and a concept and process audit by internationally renowned audit firm  the solution received acceptance from Swiss regulatory bodies. Cooperation and alignment with regulators, constant code-reviews and process audit by authorized institutions are a cornerstone of our product.


---
## Reconcilliation 
On a technical level, all transaction details can be sent to an external audit database for archiving and settlement purposes. The details contain relevant data like timestamp, individually signed transactions (per user), the fully signed transaction, crypto protocol, amount, fee, source, return, destination address or status. The database provides a regulatory compliant audit trail for all performed transactions, including failed or canceled transactions, whereby data will be archived in order to remain compliant. 
Users from internal settlement teams can get read-only access to filter and view transactions so that they can easily extract the transferred amount and fees for settlement in the core banking system. 
The settlement process covers the following aspects.

* Transactions of clients must be transferred on dedicated wallet addresses to ensure traceability via blockchain. Values inside settlement wallets must be on the balance sheet.
* For transfers which include fees, an additional booking in the core banking system must be done.


## Key management 


| Feature        | Description |
| ------------- |:-------------|
| **Key generation** |  Keys are generated according to BIP-32 key derivation schemed |
| **Key registration** | The initial setup of the devices and the creation of the master key is done in a key ceremony in a secure environment (we suggest a white room ceremony). The underlying mnemonic phrase should be kept on steel-plates in an off-premise vault and can be used to re-create the master key if required. From this master key, we derive forward deterministic key derivations. We support BIP-32, BIP-39, BIP-44 and offer hardened as well as non-hardened key derivation.      |
| **Key storage** | The master key is only used during the key ceremony and is then discarded from the devices. Public keys including the derivation scheme get stored outside the hardware wallets on the trusted node inside the account/wallet management side-chain and get connected to customer accounts.|
| **Key installation and distirbution** | Master key gets produced during the key ceremony, then sliced according to Shamir's secret m out of n logic. Master key gets destroyed and slices get encrypted & distributed to m hardware wallets where they are stored encrypted inside the secure element.|
| **Key use** | All slices get collected by a master hardware wallet, the master key gets recreated out of decrypted and collected Shamir slices. Signings secret gets derived according to the derivation path delivered by the raw transaction, the raw transaction gets signed, the master key gets zeroised.|
| **Key backup** | Mnemonic phrase on steel plates (we recommend to keep this/these steel plates in a dedicated off-premises vault) |
| **Key recovery** | Through mnemonic phrase |
| **Key revocation** | A backup set of hardware wallets, provision of backup, creation of a new master key that gets sliced and distributed to a backup set. Funds get transferred from the existing hardware wallet set to a backup set. Existing hardware wallets get zeroized.|
| **Key suspension** | Zeroing of devices. Potentially sending funds to escrow address.|
| **Key destruction** | An on-device command to revoke any slices|


## Business logics 

**Validated AVALOQ integration** - 
RIDDLE&CODE’s digital asset management solution is already implemented with Avaloq, a leading provider of core banking software systems. The goal was to extend the existing banking process to seamlessly integrate with the new digital asset management workflow. This effort mostly regarded the triggering, management, and execution of transactions, the integration of security or regulatory provisions, the process of settlement, the mapping of traditional customer accounts with crypto custodian accounts, database interfaces, and the integration of audit trails. 

**Segregation of roles** - 
The principle of having more than one person required to complete a task was achieved by decoupling banking related roles (accept an order, create an order, confirm an order) from tasks regarding the execution (using the digital asset management workflow). On top, roles and responsibilities can be tied to pre-defined threshold limits. The individual authorization of users is achieved during the initiation process when the administrator defines the number of required signing devices (Shamir secret slices, m out of n) for a transaction. 

**Regulatory approval workflows** - 
Supports the enforcement of local regulatory requirements via policy layer e.g. amount of transfers, signatures, location of the approver, time locks,

**Account wallet segregation** - 
Certain regulatory provisions (e.g. Switzerland) require banks to back the value of cryptocurrencies in their books with FIAT (e.g. Switzerland requires a backing of 800% to cover market or credit risks). If banks want to offer crypto custodial services our solution allows linking keys - that are generated by forward deterministic key derivation – directly to client account. Thus, banks can prove their clients’ ownership of custodian crypto assets achieving full segregation of assets. As a result, they do not need to back these assets with FIAT. This was successfully demonstrated in a regulatory acceptance process.

**Settlement, reconciliation and audit trail** - 
On a technical level, all transaction details can be sent to an external audit database for archiving and settlement purposes. The details contain relevant data like timestamp, individually signed transactions (per user), the fully signed transaction, crypto protocol, amount, fee, source, return, destination address or status. The database provides a regulatory compliant audit trail for all performed transactions, including failed or canceled transactions, whereby data will be archived in order to remain compliant. 
Users from internal settlement teams can get read-only access to filter and view transactions so that they can easily extract the transferred amount and fees for settlement in the core banking system. 
The settlement process covers the following aspects.
* transactions of clients must be transferred on dedicated wallet addresses to ensure traceability via blockchain. Values inside settlement wallets must be on the balance sheet.
* For transfers which include fees, an additional booking in the core banking system must be done.
Whitelisting and blacklisting
To follow AML regulatory requirements and increase the level of security, recipients and sender coin addresses can be white- or blacklisted. 

**Agile custodian service** - 
Based on the private key of a core wallet, a theoretically unlimited number of addresses can be generated. These new coin or token addresses represent the custodian wallets which can be managed without additional hardware or software, making our digital asset management solution an extremely scalable and versatile solution. It is mathematically impossible to reverse-calculate the underlying key to the forward-deterministic key derivation scheme that we deployed. Thus, regardless of the number of derived addresses, the original keys are 100% safe. 

**GDPR compliant** - 
Our devices are compliant with GDPR since any person-related account data is just known internally to core banking system of the bank. Inside the accounting system individual accounts get anonymized ID-codes that get mapped to coin addresses. This way there is a clear link between digital asset holder and account holder and no personal data is shared or transferred to the RIDDLE&CODE devices. The ID-codes become part of the key derivation scheme and hence are part of the transaction data. This information is anonymous to the outside and only visible to the bank itself. This scheme was part of the audit process.

**Scalability** - 
Using forward deterministic key derivation our solution provides an unlimited number of wallet-addresses with the same hardware and software. The number of signature devices is also unlimited in theory. However, the bigger the number of signature devices required to sign a transaction (configurable by the customer via Shamir secret slicing) the more it will reduce the convenience in daily operations. The transactions are based on the network and ledger capabilities and not limited by our product set up. Our solution focuses on low frequency/high-value transactions but will offer high-frequency transaction in the next iteration of our product. 



## Enterprise support




## Available currencies

The solution currently supports 32 types of crypto assets (and derivatives thereof). Bitcoin-forked or ERC-20 assets are counted as one type. 
Additional cryptocurrencies and tokens can be implemented on request. 

|        |  |        |  |
| ------------- | -------------| ------------- | -------------|
| Bitcoin |  DASH | ELEMENT| ZENCASH |  
| BITCOIN CASH |  BINANCE | QTUM| RAVENCOIN |  
| BITCOIN GOLD |  STELLAR | CORDA R3| DIGIBYTE |  
| BITCOIN DIAMOND |  CARDANO | LISK| KOMODO |  
| IOTA |  MONERO | PIVX| MAIDSAFECOIN |  
| Ethereum |  TEZOS | DOGECOIN| MONACOIN |  
| RIPPLE |  AUGUR | DECRED| FUJICOIN |  
| LITECOIN |  NEM | TENDERMINT| WANCHAIN |  
| TETHER |  ZCASH | LIQUID|  |  

