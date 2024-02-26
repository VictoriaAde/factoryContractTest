import { loadFixture } from "@nomicfoundation/hardhat-toolbox/network-helpers";
import { expect } from "chai";
import { ethers } from "hardhat";

async function main() {
  const votingFactoryAddr = "0x531A2F36969eF63016dd559e965fef9d1F3674F1";

  const votingFactory = await ethers.getContractAt(
    "IVotingPollFactory",
    votingFactoryAddr
  );

  const question = "What is your president";
  const options = ["Buhari", "Tinubu"];

  // const createPollTx = await votingFactory.createPoll(question, options);
  // await createPollTx.wait();

  const votingPollAddr = "0xe8cda907c49f28870765f1e3846043199bcb4ab2";
  const votingPoll = await ethers.getContractAt("IVotingPoll", votingPollAddr);

  // const voteTx = await votingPoll.vote(1);
  // await voteTx.wait();

  // const getPolls = await votingFactory.getDeployedPolls();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
