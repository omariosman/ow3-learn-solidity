// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {

    // for loop
    function countSum() public pure returns (uint256) {
        
        uint256 total = 0;

        for(uint256 i = 1; i <= 10; i++) {
            total += i;
        }

        return total;
    }

    // while loop
    function countSum2() public pure returns (uint256) {
        
        uint256 total = 0;
        uint256 i = 1;

        while(i <= 10) {
            total += i;
            i++;
        }

        return total;
    }
}