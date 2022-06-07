// scripts/Language-Features-client-1.js
module.exports = async function main (callback) {
  try {
    // Our code will go here

    // Retrieve accounts from the local node
    const accounts = await web3.eth.getAccounts();
    console.log(accounts);

    // Set up a Truffle contract, representing our deployed LanguageFeatures instance
    const LanguageFeatures = artifacts.require('LanguageFeatures');
    const languageFeatures = await LanguageFeatures.deployed();

    // Call the retrieve() function of the deployed Box contract
    const val1 = await languageFeatures.add(3,5);
    const val2 = await languageFeatures.sub(5,3);
    console.log('Add(3,5) value is', val1.toString());
    console.log('Sub(5,3) value is', val2.toString());

    await languageFeatures.store(21);
    const value = await languageFeatures.retrieve();
    console.log('LangFeature value is', value.toString());

    callback(0);
  } catch (error) {
    console.error(error);
    callback(1);
  }
};

