// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract A {
    function sayHello() public virtual pure returns(string memory) {
        return "Hello from parent";
    }
}

contract B is A {
    function sayHello() public override pure returns(string memory) {
        return "Hello from child";
    }
}


