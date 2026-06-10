// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

// Events Example
contract A {
    event ticketSold(address indexed, uint256 indexed);
}

contract B is A {
    function buyTicket() public  {
        emit ticketSold(msg.sender, 100);
    }
}








// Modifiers Example
contract MyParent {
    modifier checkPrice() {
        _;
    }
}

contract MyChild is MyParent {
    function buyTicket() public checkPrice {
    }
}









// Constructor Example
contract Parent {
    constructor() {

    }
}

contract Child is Parent {
    constructor() Parent() {

    }
}