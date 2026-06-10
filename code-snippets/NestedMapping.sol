// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract NestedMapping {
    
    // election id => candidate address => votes
    mapping(uint256 => mapping(address => uint256)) private votes;

    function castVote(uint256 electionId, address candidateAddr) public {
        votes[electionId][candidateAddr]++;
    }

    function getVotesCount(uint256 electionId, address candidateAddr) public view returns(uint256) {
        return votes[electionId][candidateAddr];
    }

}