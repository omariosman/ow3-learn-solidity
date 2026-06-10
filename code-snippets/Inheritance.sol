// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract A {
    uint256 public num = 10;
    uint256 internal num2 = 10;
    uint256 private num3 = 10;

    function sayHello() public pure returns(string memory) {
        return "Hello World!";
    }
}

contract B is A {
    function getNum() public view returns(uint256) {
        return num2 + 5;
    }
}