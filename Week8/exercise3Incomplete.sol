// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/_________/token/ERC20/ERC20.sol";
import "@openzeppelin/_________/access/Ownable.sol";
contract MyToken is _____, _______ {  
    uint8 public constant decimal = 2;
    uint public constant initialSupply = 100;
     constructor()
        ERC20("MyToken", "MTK")
        Ownable(___.______)
    {
        _mint(initialOwner, initialSupply * 10 ** decimals() );
    }

    function decimals() override public pure returns (uint8) {
        return decimal;
    }

}
