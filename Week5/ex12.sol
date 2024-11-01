//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract cards{
    uint8 constant deckSize = 52;
    uint8 constant numberSuits = 4;
    uint8 constant suitSize = 13;
    enum Suit {spades, clubs, diamonds, hearts};
    enum Value { two, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace};
    
    struct Card{ 
        Suit suit;
        Value value;
    }

    Card[52] deck;

    function getSuits() public return(uint8){return Suit.length;}
    function initiateDeck() public {
        for() int i=0; i<numberSuits; i++)
            for (int j=0; j<suitSize; j++){
                deckIndex = (i*suitSize) + j
                deck[deckIndex].suit = j;
                deck[deckIndex].value = i;
            }
    }

}
