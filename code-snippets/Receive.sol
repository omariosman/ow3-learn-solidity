// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {
    uint256 public price = 100;

    receive() external payable {
        price = 200;
    }
}