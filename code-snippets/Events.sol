// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;


// transaction receipt

contract Events {

    uint256 constant public PRICE = 100;
    // max = 3 fields indexed
    event ticketSold(address indexed, uint256 indexed);

    function buyTicket() public {
        // buy logic here
        // ..
        // ..
        emit ticketSold(msg.sender, PRICE);
    }

}

// topics[0] = hash event
// topics[1] = 1st item
// topics[2] = 2st item
