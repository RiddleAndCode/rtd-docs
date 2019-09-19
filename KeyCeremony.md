# KEY CEREMONY

A mnemonic phrase is a representation of a secret (private/public key) in 24 words.
Owning those words in the correct order allows the secret, and hence the cryptographic keys, to be recreated.
Once the secret has been recreated, it will be divided in shares of a shamir familiy and distributed to devices.
This means that owning the mnemonic phrase allows recreating the shamir family and possibly distributing to a 1/1 family: in that scenario a single device that can sign everything.

There are some concepts that are central: 
1. the mnemonic phrase should be divided and stored in a manner that
	1. allows no single person to know the whole mnemonic 
	2. allows the whole mnemonic to be recreated even if a single plate is lost/missing 
2. storage of the plates should be in separate physical locations
3. when filling the steel plates every involved person must not see the other persons words


After completing the key ceremony, a full restoration of the devices, and verification of the generated addresses should be performed.

## Finding the right use case
Varies depending on the number of people involved in the key ceremony (therefore the number of plates will change accordingly).

## How to use a steel plate
We see how to open a steel plate and how the insertion of the letters works.

## Implementation of the 4 plates / 4 people use case
We explain how to use 4 plates with four people, each writing 6 words (A/B/C/D)

All plates are closed

First person opens plates 1 and 2.\
First person writes A on plates 1 and 2.\
First person closes plates 1 and 2.\
First person flips plates 1 and 2.\

Second person opens plates 3 and 4.\
Second person writes B on plates 3 and 4.\
Second person closes plates 3 and 4.\
Second person flips plates 2 and 3.\

Third person opens plates 1 and 2.\
Third person writes C on plates 1 and 2.\
Third person closes plates 1 and 2.\
Plates 1 and 2 are completed.\

Fourth person opens plates 3 and 4.\
Fourth person writes D on plates 3 and 4.\
Fourth person closes plates 3 and 4.\
Plates 3 and 4 are completed.\


## Key ceremony, step by step

There's a master of ceremony and there are 4 persons in a safe confidential room (no cameras. no microphones, no mobiles, no cctvs, closed windows, etc).\
The equipment required is a trusted node and all the signature devices.\
The generation of the mnemonic phrase begins with the master of ceremony and all the persons in the room.\
Connect all 5 devices to trusted node.\
Make sure all devices show the Riddle & Code logo before proceeding.\
The master of ceremony.\
Hover Admin button, and click Generate Shamir Family.\
All devices will be asked for the PIN. (See: Insert Pin).\
If it doesn't happen or the dropdown list doesn't show all 5 devices, refresh the page.\
From the dropdown list choose the master device. (See: Device identity)\
Fill the Total number of slices (5)\
Fill the Minimum number of slices (2)\
Click Generate Shamir button, and redirect your attention to the master device.\
Master device:\
The master device will be prompted "Generate Shamir Secrets?". Click the button to confirm.\
You may be asked to confirm the identity of the other devices. (See: Device identity). Click the button to confirm them.\
You will be asked to confirm the newly generated mnemonic phrase, word by word. Each word will be shown only once. Click the button to confirm each of them.\

Each person takes the device with him alone to read the words (no one else has to see his words but everybody can ensure he's not flipping the plate).\
Each one of the 4 persons will take turns in writing 6 consecutive words on steel plates, as explained above.\
Since the last word will be visible in-between the person swap, the device will have to be covered and the press of the button to the next word will have to be performed by the master of ceremony, with the display covered.\
The following person will then remove the cover and find the first word to transcribe.\
If the final batch of words will be less than 6, the whole ceremony will have to be performed again.

Redirect your attention to the slave devices.\

Slave device(s):\
You will be prompted for "Store key slice?".\
You may be asked to confirm the identity of the master device. (See: Device identity)\
Redirect your attention to the web interface.\
After some time, a successful green message should appear.

Once the key ceremony is completed, a restore has to be performed so that eventual errors are immediaely identified.\
It is recommended to include and address creation and comparison during the verification process.\

We will then proceed to perform a restore with a known mnemonic phrase so that we will have some funded addresses to perform a transaction.

### Check device identiy
You can check the identity of each hardware device, by pressing its button when it's in an idle state.

### Insert PIN
1. In the beginning or expiration of a device session, the PIN will be asked to perform any operation.
2. A shuffled digit pad will be shown on the device screen.
3. A positional pad will be shown on the web interface.
4. Match the position of digits shown on the device.
5. If PIN mismatches, the device will freeze and will need to be physically reconnected.









