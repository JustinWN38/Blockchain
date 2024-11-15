// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MyToken is ERC20, Ownable {
    uint8 public constant decimal = 2;
    uint public constant initialSupply = 100;
    constructor(address initialOwner)
    ERC20 ("MyToken", "MTK")
    Ownable(initialOwner)
    {
        _mint(initialOwner, initialSupply * 10 ** decimals());
    }
    function decimals() override  public pure returns (uint8) {
        return decimal;
    }
}

// Owner: Mum : 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// Spender: Son : 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
// Reciever: Shop : 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db