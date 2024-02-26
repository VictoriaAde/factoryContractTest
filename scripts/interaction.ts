import { loadFixture } from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("VotingPoll", () => {
  async function deployVotingPollContract() {
    const votingFactory = "0x531A2F36969eF63016dd559e965fef9d1F3674F1";

    const tokenBank = await ethers.getContractAt(
      "IVotingPollFactory",
      votingFactory
    );
  }
});
