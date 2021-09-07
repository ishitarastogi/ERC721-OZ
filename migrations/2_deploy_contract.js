const VolcanoToken = artifacts.require("./VolcanoToken.sol");

module.exports = function (deployer) {
  deployer.deploy(VolcanoToken);
};
