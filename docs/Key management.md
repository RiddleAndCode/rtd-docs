
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
