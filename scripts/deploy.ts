import { ethers } from "hardhat";

async function main() {
  const currentTimestampInSeconds = Math.round(Date.now() / 1000);
  const unlockTime = currentTimestampInSeconds + 60;

  const lockedAmount = ethers.parseEther("0.001");

  // const question = "What is your president";
  // const options = ["Buhari", "Tinubu"];

  const factory = await ethers.deployContract("VotingPollFactory");

  await factory.waitForDeployment();
  // await votingPoll.waitForDeployment();

  console.log(`VotingPollFactory deployed to ${factory.target}`);

  // console.log(`VotingPollFactory deployed to ${votingPoll.target}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
