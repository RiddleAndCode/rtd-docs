# Key ceremony: 3 persons, 3 plates.

## Introduction 
This is going to explain how to perform a Key Ceremony for 3 persons and a master of ceremony.
We will use 3 steel plates to store the whole mnemonic phrase, guaranteeing confidentiality (no single person will ever see or hold all the mnemonic phrase) as well as full recovery in case a single steel plates is missing.

Please read this document in full before proceeding with the full Key Ceremony.
It is suggested to perform a test Key Ceremony, using pieces of paper in place of the actual steel plates, before the real one. This will allow all actors to be familiar with the whole procedure and to clear any doubt about the whole procedure.

If any doubt arises please contact Riddle&Code before proceeding with the full Key Ceremony. 

## Necessary equipment

* All the signature devices.
* The Trusted Node .
* Three steel plates.
* Three locks, fitting the steel plates.
* A set of tweezers, to help inserting of letters in the steel plates.
* A flat screwdriver, or similar, to help opening of the steel plates' barrier locking the letters into place.

## The plates 

A single plate stores 24 words, 12 on each side.
Each side has 3 rows, with 4 words in each row.
All plates should rest on a flat, non-transaparent surface so that when open only one side will be readable. 
When turning a plate on the opposite side, the plate should always be closed.
Each plate will be sealed with a lock.
A plate side can be marked by putting a temporary removable sticker, so that during the validation of the mnemonic phrase we will know which plate contains which words.

It's suggested for everybody involved to become familiar with basic steel plates operations: opening, closing, turning them over, inserting the letters and so on.

## The ceremony

The master of ceremony will be responsible for handing the plates to each other person, and to ensure that no person will turn them over unless as part of the procedure.
He will also make sure that if the procedure is not being followed correctly the ceremony will be stopped and restarted anew.

The master of ceremony will begin the operation in front of all person involved.
He will then be left alone with the first person, open plates A and B (which will have to contain no words), the first person will privately read 8 words from the signature device and transcribe them to plates A and B.
He will write them in words 1 to 8 (first and second row) then close the plates, mark the sides as 'ALPHA' and turn both plates over.
The first person will cover the signature device display.

The second person and the master of ceremony will join the first person, which will leave.
The master of ceremony will click the button once, open plates A and C (which will have to contain no words) then let the second person privately remove the display cover, read the following 8 words, and write them in plates A and C, using words 5 to 12 (second and third row).
He will then mark the sides as 'BETA' and turn over plate C.
The second person will cover the signature device display.

The third person and the master of ceremony will join the second person, which will leave.
The master of ceremony will click the button once, open plates B and C (which will have to contain no words) then let the third person privately remove the display cover, read the final 8 words from the signature devices and write them in plates B and C, using words 1 to 4 for the first 4 words and 9 to 12 for the second 4 words (first and third row).
He will then mark the sides as 'GAMMA'.

## Mnemonic validation

Mnemonic validation is a procedure to ensure that all steel plates contain the correct mnemonic words.
Unless this is performed, there is be no guaranteed for future restoration from mnemonic, and hence of having access to funds in case a restoration of the devices is needed.
It happens just after the key ceremony is completed, with the steel plates marked with stickers.

It can be performed by the same persons which did the key ceremony or by three different ones (plus the same master of ceremony).
There's a security tradeoff to be made here.
If the same persons perform it, each person will verify the words he wrote himself, leaving space for a malicious actor to write down words in a wrong not restorable order and yet be able to perform the restoration correctly. He will effectively be needed to perform any future restoration.
If 3 new people will perfom this operation, we will have the guarantee that the words written in the plates are correct, and that future restorations will be succesfull, but at the same time we will end the key ceremony with 6 persons having possibly memorized a third of the mnemonic phrase, instead of three.

After the Key Ceremony is performed, generate a set of addresses (see manual) and write them down publicly. This will be repeated after each restoration, and a restoration will be considered succesfull if the same set of addresses is generated.

In this process each side of all 3 plates will be used to restore the signature devices. Each one of the three persons will be assigned a set of words ('ALPHA. 'BETA', 'GAMMA'). Altogether, the 3 plates has each set of words written twice.
The first person ('ALPHA') will privately open the first corresponding side, input the words, close the plate, then the second person ('BETA') will do the same, and finally the third person will do the same again (with 'GAMMA').
At this point a set of addresses has to be generated and verified against the previously created one.
The same operation (including the address verification) will be performed again by using the set of words written on the 'other' plates sides (the ones which has not just been used).
The master of ceremony will be responsible to hand out the correct plates to each person so that the two restorations do not happen using the same plates side twice, as well as to make sure that no person will ever turn the plates and read the opposite side.
Once both address verification have been executed, the stickers will be removed and the steel plates will be sealed by the master of ceremony, in presence of all people involved.


## Restoration of the mnemonic phrase


Given any two plates, when opening them you will have 3 different sides, plus a fourth one which is a copy of one of the others.
Taking the 3 different sides, you can perform a recovery by using a mnemonic with 
* the 8 words on side that has the first and second row filled up, followed by
* the 8 words on side that has the second and third row filled up, followed by
* the 8 words on side that has the first and third row filled up
