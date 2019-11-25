#Security 

- [Encrypted communication](#encrypted-communications)
- [End to End Security approach](#End-to-End-Security-approach)
- [Key Management](#key-management)
- [Business Logics](#business-logics)
- [Enterprise support](#enterprise-support)
- [Available currencies](#available-currencies)


## Encrypted communication

The communication between the components of RIDDLE&CODE digital asset management solution is fully encrypted and authenticated thereby protected from malicious interception. To ensure the security of the communication of the devices ECDH is used.
The exchange of signee slices between Signature Devices and Trusted Node is encrypted all the way to the master device so that the TN can never see or read these securely protected slices. 

## End to End Security approach

The RIDDLE&CODE digital asset management solution is based on a holistic security approach with the goal of excluding or minimising the exposure to attack vectors on the hardware and the software level all together. 

**Signing secrets are never stored on a single device**
RIDDLE&CODE deployed collective signing based on Shamir’s Secret to sign transactions. In contrast to traditional multi-sig solutions that only require a number of n devices to sign a transaction, collective signature schemes increase security by dividing a secret (the private key) into parts, giving each participant its own unique part. To reconstruct the secret just some of the parts or all of them are needed. In other words, a transaction can only be signed if the predetermined number of signees contributes their part of the secret. The final key for the transaction is generated out of these multiple signee keys avoiding a single point of failure attack vector. 

**FIPS 140-2 compliant**
RIDDLE&CODE offers FIPS 140-2 compliant hardware wallets to manage public key infrastructure. All communication follows the PKCS#11 standards for HSM. The next iteration of our SD will feature FIPS 140-2 level 3 including tamper proofness, strong focus on improved SD capabilities and new device form-factor.

**Audits and regulatory compliancy**
Our solution is fully deployed at a Swiss Bank and is in the process of being integrated at one of the biggest players in the European banking industry (undisclosed). Following an in-depth technical audit by CNLab and a concept and process audit by internationally renowned audit firm PriceWaterhouseCooper (PwC) the solution received acceptance from Swiss regulatory bodies. Cooperation and alignment with regulators, constant code-reviews and process audit by authorized institutions are a cornerstone of our product. 

**Long term security**
Future proof security design includes quantum-proof algorithms for signing transactions already today. 

**Secure processes**
A three-fold approach guarantees an end to end security: 
1. Secure development process 
2. Secure firmware update process  
3. Secure boot process per device 