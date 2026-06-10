// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {

    // declaration
    address immutable token;

    // initialization
    constructor(address _token) {
        token = _token;
    }

}
