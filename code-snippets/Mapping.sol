// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MyContract {
    // address => grade
    // key => value
    mapping(address => uint256) public studentGrade;

    mapping(address => bool) public isSubscribed;

    // CRUD

    // Create
    function addGrade(address _student, uint256 _grade) public {
        studentGrade[_student] = _grade;
    }

    // Read
    function getGrade(address _student) public view returns(uint256) {
        return studentGrade[_student];
    }

    // Update
    function updateGrade(address _student, uint256 _newGrade) public {
        studentGrade[_student] = _newGrade;
    }

    // Delete
    function deleteGrade(address _student) public {
        delete studentGrade[_student];
    }
}
