import { ethers } from "hardhat";
const hre = require("hardhat")

async function main() {
  const Transactions = await hre.ethers.getContractFactory("Transaction")
  const transactions = await Transactions.deploy();

  await transactions.deployed();

  console.log("Your transaction has been deployed to:", transactions.address)

  
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
  console.error(error);
  process.exit(1);
});