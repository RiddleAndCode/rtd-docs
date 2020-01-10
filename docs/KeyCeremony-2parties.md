# Key ceremony: 2 parties, 2 plates.

## Introduction
This is our recommendation on how to perform a Key Ceremony for 2 parties and a master of ceremony.
Please revise it and adapt to your own operational processes. It is your responsibility to verify that it complies with your safety and compliancy procedures/requirements. 
We will use 2 steel plates to store the whole mnemonic phrase, guaranteeing confidentiality (no single person will ever see or hold all the mnemonic phrase) as well as full recovery in case a single steel plate is missing.

Please read this document in full before proceeding with the full Key Ceremony.
It is suggested to perform a test Key Ceremony, using pieces of paper in place of the actual steel plates, before the real one. This will allow all actors to be familiar with the whole procedure and to clear any doubt about the whole procedure.

If any doubt arises please contact Riddle&Code before proceeding with the full Key Ceremony.

## Necessary equipment

* All the signature devices.
* The Trusted Node.
* Two steel plates.
* Two locks, fitting the steel plates.
* A set of tweezers, to insert of letters in the steel plates.
* A flat screwdriver, or similar, to open the steel plates' barrier locking the letters into place.

## The plates

A single plate stores 24 words, 12 on each side.
Each side has 3 rows, with 4 words in each row.
All plates should rest on a flat, non-transparent surface so that when open only one side will be readable.
When turning a plate on the opposite side, the plate should always be closed.
Each plate will be sealed with a lock.
A plate side can be marked by putting a temporary removable sticker so that during the validation of the mnemonic phrase we will know which plate contains which words.

It's suggested for everybody involved to become familiar with basic steel plates operations: opening, closing, turning them over, inserting the letters and so on.

## The ceremony

The master of ceremony will be responsible for handing the plates to each person, and to ensure that no person will turn them over unless as part of the procedure.
He will also make sure that if the procedure is not being followed correctly the ceremony will be stopped and restarted anew.

The master of ceremony will begin the operation in front of all persons involved.
He will then be left alone with the first person, open plates A and B (which will have to contain no words), the first person will privately read 12 words from the signature device and transcribe them to plates A and B.
He will write them in words 1 to 12 (first, second and third row) then close the plates, mark the sides as 'ALPHA' and turn both plates around and over.


The second person will join the master of ceremony and the first person, which will leave.
The master of ceremony will click the button once, open the turned plates A and B (which will have to contain no words on positions 13 to 24) then let the second person privately remove the display cover, read the following 12 words, and write them in plates A and B, using words 13 to 24 (first, second and third row).
He will then mark the sides as 'BETA', close and turn over the plates to the master of ceremony.

The mnemonic phrase got stored after having completed these two tasks.
Now, the backup has to be validated.

## Mnemonic validation

Mnemonic validation is a procedure to ensure that all steel plates contain the correct mnemonic words.
Unless this is performed, there is be no guaranteed for future restoration from mnemonic, and hence of having access to funds in case restoration of the devices is needed.
It happens just after the key ceremony is completed, with the steel plates marked with stickers.

It can be performed by the same persons which did the key ceremony or by three different ones (plus the same master of ceremony).
There's a security tradeoff to be made here.
If the same persons perform it, each person will verify the words he wrote himself, leaving space for a malicious actor to write down words in a wrong not restorable order and yet be able to perform the restoration correctly. He will effectively be needed to perform any future restoration.
If 3 new people will perform this operation, we will have the guarantee that the words written in the plates are correct, and that future restorations will be successful, but at the same time we will end the key ceremony with 6 persons having possibly memorized a third of the mnemonic phrase, instead of three.

After the Key Ceremony is performed, delete all existing addresses (if they exist),  generate a set of addresses (see manual) and write them down publicly. This will be repeated after each restoration, and a restoration will be considered successful if the same set of addresses is generated.

In this process, each side of all 2 plates will be used to restore the signature devices. Each one of the 2 persons will be assigned a set of words ('ALPHA. 'BETA'). Altogether, the 2 plates have each set of words written twice.
The first person ('ALPHA') will privately open the first corresponding side, input the words, close the plate, then the second person ('BETA') will do the same.
At this point, a set of addresses has to be generated and verified against the previously created one (of the key ceremony).

The same operation (recover, addresses deletion, generation and verification) will be performed again by using the set of words written on the 2nd plate  (the one which have not just been verified).


Once both address verification has been executed, the stickers will be removed and the steel plates will be sealed by the master of ceremony, in presence of all people involved.


## Restoration of the mnemonic phrase


Given a plate, when opening you will have 2 sides with 12 words each containing the mnemonic as a whole.