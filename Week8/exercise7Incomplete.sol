//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/access/AccessControl.sol";
contract counter is _____________{
    uint8 public counter;
    _______ public constant INC_ROLE = _________("INCREMENTOR");
    _______ public constant DEC_ROLE = _________("DECREMENTOR");
    address public constant incRole = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; //cancun addr 2
    address public constant decRole = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB; //cancun addr 4

    constructor(){
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setRoleAdmin(________, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(________, DEFAULT_ADMIN_ROLE);
        _grantRole(________, _______);
        _grantRole(________, _______);
    }
    
    function increment() external ________(________) {counter++;}
    function decrement() external ________(________) {counter--;}

}
