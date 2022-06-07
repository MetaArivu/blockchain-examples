const LanguageFeatures = artifacts.require("LanguageFeatures");

module.exports = function (deployer) {
  deployer.deploy(LanguageFeatures);
};
