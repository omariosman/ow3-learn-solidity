// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract MappingWithArray {

    mapping(address => uint256[]) private studentGrades;

    function addGrade(address _student, uint256 _grade) public {
        studentGrades[_student].push(_grade);
    }

    function getGrade(address _student, uint256 _index) public view returns(uint256) {
        return studentGrades[_student][_index];
    }

    function updateGrade(address _student, uint256 _index, uint256 _newGrade) public {
        studentGrades[_student][_index] = _newGrade;
    }

    function deleteGrade(address _student, uint256 _index) public {
        delete studentGrades[_student][_index];
    }

}