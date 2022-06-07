// scripts/index.js
module.exports = async function main (callback) {
  try {
    // Our code will go here

    // Retrieve accounts from the local node
    const accounts = await web3.eth.getAccounts();
    console.log(accounts);

    // Set up a Truffle contract, representing our deployed Box instance
    const Storage = artifacts.require('Storage');
    const storage = await Storage.deployed();

    // Call the retrieve() function of the deployed Box contract
    const value = await storage.retrieve();
    console.log('Storage value is', value.toString());

    callback(0);
  } catch (error) {
    console.error(error);
    callback(1);
  }
};

