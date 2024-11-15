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
