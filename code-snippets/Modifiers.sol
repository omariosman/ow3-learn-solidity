// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {

    uint256 constant PRICE = 100; // 100 wei
    uint256 public productsSold;

    modifier checkPrice(address student) {
        require(student != address(0));
        require(msg.value >= PRICE, "Amount less than price");
        _;
        productsSold++;
    }

    function buyProduct(address student) public checkPrice(student) payable {

    }
}
