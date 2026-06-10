// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {

    uint256 constant PRICE = 1 ether;

    uint256 public productsSold;

    function buyProduct() public payable {
        productsSold++;
        if (msg.value < PRICE) {
            revert("Amount is less than price");
        }
    }

    function buyProduct2() public payable {
        productsSold++;

        require(msg.value >= PRICE, "Amount is less than price"); //Reason
    }
    
    // Everything in the state revert except:
     // gas & nonce
}
