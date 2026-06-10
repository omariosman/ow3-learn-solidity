// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract QueryBalance {

    function fund() public payable {}

    // Query balance
    function getBalance() public view returns(uint256) {
        // type casting => type conversion 
        return address(this).balance; // wei
    }
}