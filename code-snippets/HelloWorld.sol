// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract HelloWorld {
    string public message;

    constructor() {
        message = "Hello, World!";
    }

    function updateMessage(string memory _newMessage) public {
        message = _newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}


