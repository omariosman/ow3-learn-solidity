// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Enums {

    // Define enum
    enum Status {
        Pending, //0
        Shipped, //1
        Delivered, //2
        Cancelled //3
    }

    Status public orderStatus; // default value = 1st item in enum

    
    function shipOrder() public {
        orderStatus = Status.Shipped;
    }

    function deliverOrder() public {
        orderStatus = Status.Delivered;
    }

    function resetStatus() public {
        delete orderStatus; // default value
    }


    // Readability
    // Maintainability


}

