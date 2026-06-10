// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {
    
    uint256[] public numbers; // storage - persistent

    function processNumbers(uint256[] calldata _nums) public view {
        // read-only
        
    }
    
}