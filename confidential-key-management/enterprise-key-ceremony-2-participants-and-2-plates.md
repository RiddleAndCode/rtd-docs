# Enterprise key ceremony (2 participants and 2 plates)

Keys (private/public) are the foundation of each business case or application built upon blockchain. They act as a representation of indisputable identities, ownership of assets and proof-of-origin. Therefore, the generation of keys requires a controlled and secure process to guarantee that access to the keys is limited to authorised people.

The key ceremony process is designed to secure the most crucial part of the solution—the seed used to generate the initial key pair—and to minimise the attack surface.

To initiate the key ceremony, a user needs to trigger the generation of a true random number (entropy) via a command-line interface. The random number is created inside the HSM and then exported to Confidential Keystore through hardened, secure communication channels. This random number represents a 32-byte sequence as a 256-bit number and stores all the information necessary to recover a wallet and hence, assets.

However, since a 32-byte sequence would be difficult to remember or write down, the concept of the human-readable and memorisable mnemonic phrase has been introduced.

The mnemonic phrase consists of 24 words defined according to the Bitcoin improvement proposal numbered [BIP-32, BIP-39, BIP-44 and additional applicable cryptocurrency standards](https://en.bitcoin.it/wiki/BIP\_0032). To recreate a wallet and get access to funds, the words comprising the mnemonic phrase must follow the correct, previously established sequence. The very last word always functions as a control word, validating the consistency of the original phrase.



### Before you start

Below, you’ll find RIDDLE\&CODE’s recommendation for performing the ceremony for the initial key generation process. In this guide, the ceremony is performed with:

1. master of ceremony,
2. two (2) participants,
3. two (2) steel plates, and
4. a tweezer.

Please read this document in full before starting the ceremony. Review it carefully and verify that it complies with your safety practices, compliance requirements and operational processes.

RIDDLE\&CODE’s recommendation is to do a test key ceremony using pieces of paper instead of the actual steel plates. This will allow all participants of the ceremony to become familiar with the procedure and remove any doubts.

Due to the importance of this procedure, RIDDLE\&CODE recommends performing the ceremony in a separate room without cameras. Participants are not allowed to have cameras, mobile phones or any other recording devices. To increase security and ensure that the ceremony is performed correctly, some companies record the entire procedure in a way that never shows the mnemonic phrase on a screen or steel plate.

A core requirement of the key ceremony is to enable a secure communication channel between the client and the key management service. For this purpose, the service needs to use two-way TLS, while the client needs to perform the following steps before the scheduled key ceremony:

1. The client uses their certificate authority to generate a certificate/key pair and stores it as a client-ca-cert.pem
2. The client sends client-ca-cert.pem to RIDDLE\&CODE.
3. RIDDLE\&CODE provisions the key management service with the client-ca-cert.pem
4. RIDDLE\&CODE sends the Keyman CLI, including all required certificates, to the client in a completely encrypted manner.
5. The client provides RIDDLE\&CODE with the OpenPGP credentials (signature and the public key).
6. The package that RIDDLE\&CODE sends is encrypted via OpenPGP to ensure no malicious actor can intervene during the transfer.
7. The client transfers the entire package to the computer that will be used for the key ceremony.

For any unclarities or questions, please contact RIDDLE\&CODE at **support@riddleandcode.com** before proceeding with the ceremony.



### Equipment necessary for performing the key ceremony

* The client provides a reliable computer.
* RIDDLE\&CODE provides the Keyman CLI package as defined above.
* Two steel plates (not included).
* Two locks that fit the steel plates (not included).
* A set of tweezers to insert the letters into the steel plates.
* A flat screwdriver (or something similar) to open the barrier on the steel plates.

#### Keyman API

The Keymen CLI is an application and service that enables clients to securely perform the key generation and restoration in their respective confidential installation. The application creates a secure communication channel to the Trusted Execution Environment. The client can issue the below-defined commands to generate and recover keys and perform a one-time mnemonic backup.

The Keyman API covers the following capabilities:

1. Generating the JSON Web Token to log in to the service, and
2. Generating a new key pair and performing the mnemonic backup process.

****

**An overview of the available commands:**

| token                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | create a JWT token to be used for authentication    |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------- |
| generate                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | generate a new key pair and mnemonic phrase         |
| recover                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | recover a key pair from an existing mnemonic phrase |
| help \[command]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | display help for command                            |
| Usage: keyman \[options] \[command]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |                                                     |
| Options: -V, --version output the version number -u, --url the url of the keymanagement service (default: "localhost:8080") -c, --cert the TLS certificate used for authentication (default: "./ssl/client-cert.pem") -k, --key the TLS key used for authentication (default: "./ssl/client-key.pem") -a, --server-ca the certificate authority of the server (default: "./ssl/server-ca.pem") -j, --jwt the JSON Web Token used for authentication -n, --word-num number of words to present at a time when displaying mnemonic (default: 24) -h, --help display help for command |                                                     |



#### Mnemonic phrase

RIDDLE\&CODE recommends the following for storing the mnemonic phrase:

* No single person should know the whole mnemonic phrase.&#x20;
* Each person participating in the  ceremony is shown a subset of the 24 words (e.g., with two participants, each participant sees only 12 words).
* Steel plates should be stored in separate physical locations.
* When filling out the steel plates, no participant should be able to see the other participant’s words.

#### Steel plates

Each plate is sealed with a lock. A single plate stores 24 words, 12 on each side. Each side has 3 rows with 4 words in each row. During the ceremony, we’ll use two steel plates to store the mnemonic phrase. This way, confidentiality is guaranteed since no single person will ever see or hold the entire mnemonic phrase. In addition, if one steel plate is missing, the mnemonic phrase can still be recovered.

![](broken-reference)



All plates should rest on a non-transparent flat surface so that when open, only one side is readable. When turning a plate to the opposite side, the plate should always be closed. The side can be marked with a temporary removable sticker so that, during the validation of the mnemonic phrase, you will know which plate contains which words.

RIDDLE\&CODE’s recommendation is that all who participate in the key ceremony become familiar with basic steel plate operations, such as opening, closing, turning them over, inserting the letters, etc.

#### &#x20;Master of ceremony

The master of ceremony is responsible for handing the plates to each participant and ensuring that no participant turns them over unless as part of the procedure. If the procedure isn’t being followed correctly, the master of ceremony is obliged to stop it and start anew. Although the master of ceremony orchestrates the whole process, he/she never sees any of the words.



### Key ceremony process

The master of ceremony begins the process by switching on the prepared computer and accessing the Keyman API via a command-line interface. No other party shall be in the room when the key generation process is initiated.

1. The first participant is asked to join the master of ceremony in the room.
2. The master of ceremony prepares and opens the two steel plates. Let’s call them A and B.
3. The first participant issues the command **“-n 1 generate ”** on the command-line interface.
4. The mnemonic phrase is shown in parts, one word after the other, one at a time.
5. The first participant reads the first word and stores the steel letters on one side of both A and B steel plates.
6. After each word, the first participant must press **Enter** twice to proceed until the process reaches the 12th word.
7. After the 12th word is stored, the first participant closes plates A and B and marks them with “ALPHA.”
8. The first participant presses **Enter** one more time to obfuscate the 12th word.
9. Next, the master of the ceremony asks the first participant to leave the room, and the second participant enters.
10. The second participant must press **Enter** on the command-line interface. The 13th word is then displayed on the screen.
11. The second participant follows the same procedure, storing the words on the opposite side of each steel plate until all 24 words have been stored.
12. The second participant then closes the steel plates and marks them with “BETA”.



### Mnemonic validation

Mnemonic validation is performed with the steel plates, by the same master of ceremony and, typically, the same participants. In this process, up to 3 words from each side of the two plates is used to restore the mnemonic phrase. The master of ceremony is responsible for handing out the correct plates to each person and ensuring that the same side of the plate is not used twice.

The master of ceremony should also ensure that none of the participants turn the plates to read the opposite side.

The process is as follows:

1. Each of the two participants is assigned a set of words. Altogether, the two plates have a set of words written twice.
2. The first participant ("ALPHA") privately opens the first corresponding side, and inputs the numbered word as requested by the CLI.
3. The first participant continues until the random number of words has been verified successfully (as stated in the CLI).
4. After completing the above steps the first participant closes the plates and leaves the room.
5. The second participant ("BETA") joins and opens the second corresponding site of the plates.
6. The second participant presses **Enter** and inputs the numbered words requested by the CLI.
7. Confirmation of successful completion is displayed on the CLI.
8. The second participant closes the plates.
9. Mnemonic phrase is verified.

Finally, the master of ceremony seals the steel plates in the presence of all parties.



### Disaster recovery: mnemonic restoration

If you open a steel plate, you’ll see that it has two sides with 12 words each, the whole making the mnemonic phrase. With the entire mnemonic phrase, the key pair can be restored.

The recovery process follows similar steps as the initial key generation.

The master of ceremony starts the process by accessing the Keyman API via a command-line interface. No other party shall be in the room when the process is initiated.

1. The master of ceremony prepares the two steel plates A and B.
2. The first participant issues the command **“-n 1 recover ”** on the command-line interface.
3. The first participant enters the words one at a time. After each word, the first participant must press **Enter** to proceed until reaching the 12th word.
4. When the 12th word is entered, the first participant presses **Enter** to move on to word 13.
5. The first participant then closes the plate.
6. Next, the master of the ceremony asks the first participant to leave the room, and the second participant enters.
7. The second participant must press **Enter** on the command-line interface and enter the 13th word.
8. The second participant follows the same procedure, entering the words from the opposite side of each steel plate until all 24 words have been entered.
9. The hash of the mnemonic phrase is displayed on the CLI. The hash can be verified with the one stored in the initial key generation process.
10. If these hashes match, the original mnemonic phrase has been entered correctly.

This concludes the guide for secure execution of the enterprise key ceremony. If there are any questions or concerns, please contact **support@riddleandcode.com**
