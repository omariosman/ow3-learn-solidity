// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
import "hardhat/console.sol";


interface IContractB {
    function calculatePrice() external view;
}

contract A {
    function buyTicket(address contractB) public view {
        console.log("Contract A");
        console.log("tx.origin: ", tx.origin);
        console.log("msg.sender: ", msg.sender);
        console.log("==========================");
        IContractB(contractB).calculatePrice();
    }
}


contract B {
    function calculatePrice() public view {
        console.log("Contract B");
        console.log("tx.origin: ", tx.origin);
        console.log("msg.sender: ", msg.sender);
        console.log("==========================");
    }
}

// EOA: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// Contract A: 0x4AE56F8B3fc7B78Fc36582033b8722E258f74A64

// Contract A
// tx.origin: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// msg.sender: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// ==========================
// Contract B
// tx.origin: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// msg.sender: 0x4AE56F8B3fc7B78Fc36582033b8722E258f74A64
// ==========================