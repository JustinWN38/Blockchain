// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

interface Animal {
    function noise() external view returns (string memory);
}

contract Dog is Animal {
    function noise() public pure override returns (string memory) {
        return "Woof";
    }
}

contract Cat is Animal {
    function noise() public pure override returns (string memory) {
        return "Miaow";
    }
}