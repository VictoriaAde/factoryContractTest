// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IVotingPoll {
        function vote(uint256 optionIndex) external;
}