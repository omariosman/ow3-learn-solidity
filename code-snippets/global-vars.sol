// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
import "hardhat/console.sol";

contract MyContract {
    function buyTicket() public view {
        console.log(tx.origin); 
    }

    function buyTicket2() public view {
        console.log(msg.sender); 
    }

    function buyTicket3() public payable {
        console.log(msg.value); // wei 
    }


    function buyTicket4() public view {
        // unix-based
        // https://www.epochconverter.com/
        console.log(block.timestamp);  
    }

    function buyTicket5() public view {
        console.log(block.number); 
    }
}

// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

// unix-based
// 1773101024

// block number
// 231