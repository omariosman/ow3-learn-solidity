// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {
    
    // state variables
    uint256 value;

    // read from state => view
    function getValue() public view returns(uint256) {
        return value;
    }

    // write to state (non-view function)
    function setValue(uint256 _newVal) public {
        value = _newVal;
    }

    // computation => pure
    function compute() public pure returns(uint256) {
        uint256 result = 25 * 60;
        return result;
    }    

}
