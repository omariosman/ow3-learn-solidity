// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract SendMoney {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {}

    // transfer
    function sendMoney1() public {
        payable(owner).transfer(0.5 ether);
    }

    // send
    function sendMoney2() public {
        bool success = payable(owner).send(0.5 ether);
        require(success, "Transfer failed!");
    }

    // call
    function sendMoney3() public {
        (bool success, ) = payable(owner).call{value: 0.5 ether}("");
        require(success, "Transfer failed!");
    }
}
