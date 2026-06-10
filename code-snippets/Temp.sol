// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract Struct {
   
    // CRUD
    // Create

    // Read
    // Update
    // Delete

    struct Student {
        address studentAddr;
        uint256 id;
        string name;
    }

    Student student1;

    function createStudent(uint256 _id, string memory _name) public returns(Student memory) {
        student1 = Student({
            id: _id,
            name: _name,
            studentAddr: msg.sender
        });

        return student1;
    }

    function getName() public view returns(string memory) {
        return student1.name;
    }

    function updateName(string memory _name) public {
        student1.name = _name;
    }

    function deleteStudent() public {
        delete student1;
    }


    // Structs with arrays
    Student[] public studentsArr;

    function addStudent(uint256 _id, string memory _name) public {
        Student memory student2 = Student({
            id: _id,
            name: _name,
            studentAddr: msg.sender          
        });

        studentsArr.push(student2);        
    }

    function deleteArrElement(uint256 index) public {
        studentsArr[index] = studentsArr[studentsArr.length - 1];
        studentsArr.pop();
    }

    function getLength() public view returns(uint256) {
        return studentsArr.length;
    }



}
