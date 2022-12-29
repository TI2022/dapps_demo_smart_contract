// https://eth-goerli.g.alchemy.com/v2/_MmwVVXiyJOlNfhnCk5ETfUJjjzTgIpN
require("@nomiclabs/hardhat-waffle");

module.exports = {
  defaultNetwork: "goerli",
  solidity: "0.8.0",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/_MmwVVXiyJOlNfhnCk5ETfUJjjzTgIpN",
      accounts: [
        "cf566349e0313709f185dd09af3d9dc7e0e400db424e0efa842eb56597e9eccb",
      ]
    }
  }
};
