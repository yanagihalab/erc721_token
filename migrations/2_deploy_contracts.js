const ChibannyToken = artifacts.require("ChibannyToken");

module.exports = function(deployer) {
	
  const _name = "Chibanny Token";
  const _symbol = "CIT";
  
  return deployer
    .then(() => deployer.deploy(ChibannyToken, _name, _symbol));

};
