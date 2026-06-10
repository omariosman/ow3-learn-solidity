// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

interface IAnimal {
    function makeSound() external pure returns(string memory);
}

contract Dog is IAnimal {
    // makeSound
    function makeSound() public override pure returns(string memory) {
        return "Woof!";
    }
}

contract Cat is IAnimal {
    // makeSound
    function makeSound() public override pure returns(string memory) {
        return "Meow!";
    }
}

