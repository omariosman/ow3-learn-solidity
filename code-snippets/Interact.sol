// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Counter {
    uint256 public number;

    function increment() public {
        number += 1;
    }
}

interface ICounter {
    function increment() external;
}

contract CounterCaller {
    function callIncrement(address _counterAddress) public {
        ICounter(_counterAddress).increment();
    }
}
