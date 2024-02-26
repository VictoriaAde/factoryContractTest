// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./VotingPoll.sol";

contract VotingPollFactory {
    address[] public deployedPolls;

    function createPoll(string memory _question, string[] memory _options) public {
        VotingPoll newPoll = new VotingPoll(_question, _options);
        deployedPolls.push(address(newPoll));
    }

    function getDeployedPolls() public view returns (address[] memory) {
        return deployedPolls;
    }
}
