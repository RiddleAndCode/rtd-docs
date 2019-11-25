#Glossary 

##Mnemonic Phrase
is a representation of a secret (private/public key) in 24 words.
Owning those words in the correct order allows the secret, and hence the cryptographic keys, to be recreated. 

##Key generation 

##Shamir Secret Sharing
Secret sharing refers to methods for distributing a secret amongst a group of participants, each of whom is allocated a share of the secret. The secret can be reconstructed only when a sufficient number, of possibly different types, of shares are combined together; individual shares are of no use on their own.

##Trusted Node

A TN is a dedicated on-premise device to create, orchestrate and broadcast crypto transactions. The TN is the only device connected to the internet but never holds any keys. The TN orchestrates the Signatures Devices that connect either via cable-based USB, Web USB or Bluetooth. In addition, it hosts the web interface and provides the APIs for external system integrations. 

##Signature Device
An SD is a separate physical device that handles the identities (private and public key, respectively the associated coin address) to access and release the funds stored in the wallet. It is important to mention that the signing secrets are never stored on a single device but are dynamically generated from various Shamir secret slices, thus increasing the security and making it far less prone to security breaches and theft.


##Dedicated Webinterface
A web interface is hosted on the Trusted Node and provides the essential functionalities incl. a clear separation of roles between admin and execution. It offers the functionalities required to set-up the solution, create and secure keys, configure the Shamir family and execute transactions. 