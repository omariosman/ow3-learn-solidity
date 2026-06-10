// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {

    address public owner;

    constructor() {
        owner = msg.sender;
    }
}