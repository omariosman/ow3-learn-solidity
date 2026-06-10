// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract FreelancingPlatform {

    ////////// Enums //////////
    enum JobStatus { Open, Taken, Completed, Cancelled }

    ////////// Structs //////////
    struct Job {
        string title;
        string description;
        uint256 bounty;
        address client;
        address freelancer;
        JobStatus status;
    }


    ////////// Constants & State Variables ///////////
    uint256 public constant REPUTATION_REWARD = 1;
    uint256 public listingFee = 0.001 ether;
    address public owner;
    uint256 public totalJobs;

    ////////// Mappings ///////////
    mapping(uint256 => Job) public jobs;
    mapping(address => uint256) public freelancerReputation;

    ////////// Events //////////
    event JobCreated(uint indexed jobId, address indexed client, uint bounty);
    event JobTaken(uint indexed jobId, address indexed freelancer);
    event JobCompleted(uint indexed jobId, address indexed freelancer);

    ////////// Errors //////////
    error InsufficientFunds();

    ////////// Modifiers //////////
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }


    ////////// Functions //////////
    constructor() {
        owner = msg.sender;
    }

    function postJob(string calldata _title, string calldata _description) external payable {
        if (msg.value < listingFee) {
            revert InsufficientFunds();
        }

        totalJobs++; // job id
        jobs[totalJobs] = Job({
            title: _title,
            description: _description,
            bounty: msg.value - listingFee,
            client: msg.sender,
            freelancer: address(0),
            status: JobStatus.Open
        });

        emit JobCreated(totalJobs, msg.sender, msg.value - listingFee);
    }

    function getAllJobs() external view returns(Job[] memory) {
        Job[] memory allJobs = new Job[](totalJobs);

        for(uint i = 1; i <= totalJobs; i++) {
            allJobs[i - 1] = jobs[i];
        }

        return allJobs;
    }


    function acceptJob(uint256 _jobId) external {
        Job storage job = jobs[_jobId];
        require(job.status == JobStatus.Open, "Not available");
        require(msg.sender != job.client, "Client cannot be freelancer");

        job.freelancer = msg.sender;
        job.status = JobStatus.Taken;

        emit JobTaken(_jobId, msg.sender);
    }

    function completeJob(uint256 _jobId) external {
        Job storage job = jobs[_jobId];
        require(msg.sender == job.client, "Only client can confirm");
        require(job.status == JobStatus.Taken, "Job not in progress");

        job.status = JobStatus.Completed;
        freelancerReputation[job.freelancer] += REPUTATION_REWARD;

        emit JobCompleted(_jobId, job.freelancer);
        
        (bool success, ) = payable(job.freelancer).call{value: job.bounty}("");
        require(success, "Transfer failed");
    }

    function setListingFee(uint256 _listingFee) external onlyOwner {
        listingFee = _listingFee;
    }

    function getPlatformBalance() external view returns(uint256) {
        return address(this).balance;
    }
}