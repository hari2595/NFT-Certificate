const VizruToken = artifacts.require("VizruCertificate");

module.exports = function (deployer) {
  deployer.deploy(VizruToken);
};