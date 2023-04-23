require("@nomicfoundation/hardhat-waffle");
require("@nomicfoundation/hardhat-ethers");
require("dotenv").config();

const GOERLI_URL = process.env.GOERLI_URL
const PRIVATE_KEY = process.env.PRIVATE_KEY

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks:  {
    goerli : {
      url: GOERLI_URL,
      account: [PRIVATE_KEY]
    }
      
  }
};
