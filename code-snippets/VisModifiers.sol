// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract A {
    function myFunc() public {

    }

    function myFunc2() public {
        myFunc();
    }

    function myFunc3() external {

    }

    function myFunc4() internal {

    }

    function myFunc5() private {

    }
}

// Child = Derived 
contract B is A {
    function foo() public {
        myFunc2();
    }
}
