// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract VotingPoll {
     struct Option {
        string description;
        uint256 votes;
    }

    address public owner;
    string public question;
    
    Option[] public options;
    mapping(address => uint256) public hasVoted;

    event Voted(address indexed voter, uint256 optionIndex);

    constructor(string memory _question, string[] memory _options) {
        owner = msg.sender;
        question = _question;
        for (uint i =   0; i < _options.length; i++) {
            options.push(Option({description: _options[i], votes:   0}));
        }
    }

    function vote(uint256 optionIndex) public {
        require(optionIndex < options.length, "Invalid option index.");
        require(hasVoted[msg.sender] ==  0, "You have already voted.");

        options[optionIndex].votes++;
        hasVoted[msg.sender] = optionIndex +  1;

        emit Voted(msg.sender, optionIndex);
    }


    // struct Option {
    //     string description;
    //     uint256 votes;
    // }

    // address public owner;
    // string public question;
    
    // Option[] public options;
    // mapping(address => bool) public hasVoted;

    // constructor(string memory _question, string[] memory _options) {
    //     owner = msg.sender;
    //     question = _question;
    //     for (uint i =  0; i < _options.length; i++) {
    //         options.push(Option({description: _options[i], votes:  0}));
    //     }
    // }

    // function vote(uint256 optionIndex) public {
    //     require(!hasVoted[msg.sender], "You have already voted.");
    //     require(optionIndex < options.length, "Invalid option index.");

    //     options[optionIndex].votes++;
    //     hasVoted[msg.sender] = true;
    // }
}

