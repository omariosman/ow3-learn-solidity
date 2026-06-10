// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Array {
    // Dynamic-size array
    uint256[] private arr;

    function getElement(uint256 index) public view returns(uint256) {
        return arr[index];
    } 

    function addElement(uint256 value) public {
        arr.push(value);
    }

    function removeElement(uint256 index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    function getLength() public view returns(uint256) {
        return arr.length;
    }
}
