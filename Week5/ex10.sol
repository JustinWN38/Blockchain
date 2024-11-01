//SPDX-_______-Identifier: ___
pragma ________ ^0.8.0;
________ ex10{
    uint8 ________ size = 100;
    _______ (uint => address) ______ addressMapping;
    _______[size] ______ addressArray;
    uint maxIndex;

    ________ addAddressBookEntry( _______ _entry) ______ {
        ________+=1;
        addressMapping[________]=_entry;
    }

    ________ convertToArray() ______ {
        for (uint i=1; i<=________; i++)
            addressArray[i-1] = addressMapping[i];
    }
}
