// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

abstract contract Animal {
    function makeSound() public virtual pure returns(string memory);

    function walk() public pure returns(string memory) {
        return "Walking";
    }
}

contract Dog is Animal {
    // makeSound
    function makeSound() public override pure returns(string memory) {
        return "Woof!";
    }
}

contract Cat is Animal {
    // makeSound
    function makeSound() public override pure returns(string memory) {
        return "Meow!";
    }
}

