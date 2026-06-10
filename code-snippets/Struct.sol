// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Struct {
   
    struct Student {
        address studentAddr;
        uint256 id;
        string name;
    }

    // Structs with mappings
    mapping(address => Student) public students;

    function addStudent(uint256 _id, string memory _name) public {
        Student memory student = Student({
            id: _id,
            name: _name,
            studentAddr: msg.sender          
        });

        students[msg.sender] = student;
    }

    function deleteStudent(address _key) public {
        delete students[_key];
    } 
}
