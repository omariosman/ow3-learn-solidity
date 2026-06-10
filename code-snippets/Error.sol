// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Inventory {

    error Inventory__NotEnoughAmount(uint256 amount);

    uint256 constant PRICE = 1 ether;

    uint256 public productsSold;

    function buyProduct() public payable {
        productsSold++;
        if (msg.value < PRICE) {
            revert Inventory__NotEnoughAmount({
                amount: msg.value
            });
        }
    }





    function buyProduct2() public payable {
        productsSold++;

        require(msg.value >= PRICE, Inventory__NotEnoughAmount({
                amount: msg.value
            })); // Custom error
    }
    
    // Everything in the state revert except:
     // gas & nonce
}


