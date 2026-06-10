// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {

    uint256 num;

    // Setter function
    function setNum(uint256 _value) public {
        num = _value;
    }

    function getNum() public view returns(uint256) {
        return num;
    }

}

