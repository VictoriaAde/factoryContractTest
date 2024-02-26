// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IVotingPollFactory {
        function createPoll(string memory _question, string[] memory _options) external;
        function getDeployedPolls() external view returns (address[] memory);
}