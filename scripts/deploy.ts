import "@openzeppelin/hardhat-upgrades"
import { ethers, upgrades } from "hardhat";

async function main() {

  // deploy procy contract
  // const OpenseaCloneUpgradeable = await ethers.getContractFactory("OpenseaCloneUpgradeable");
  // const openseaCloneUpgradeable = await upgrades.deployProxy(OpenseaCloneUpgradeable, {
  //   kind: "uups",
  //   initializer: "initialize",
  // });

  // console.log(`OpenseaCloneUpgradeable Proxy deployed at ${openseaCloneUpgradeable.address}`);

  // const MintingImpl = await ethers.getContractFactory("MintingImpl");
  // const mintingImpl = await upgrades.deployImplementation(MintingImpl, {
  //   kind: "uups",
  // });

  // console.log(`mintingImpl Proxy deployed at ${mintingImpl.toString()}`);

  const Collection = await ethers.getContractFactory("OpenseaCloneToken");
  const collection = await Collection.deploy();

  console.log(`mintingImpl Proxy deployed at ${collection.address}`);


}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
