// scripts/Language-Features-client-1.js
module.exports = async function main (callback) {
  try {
    // Retrieve accounts from the local node
    const accounts = await web3.eth.getAccounts();
    console.log(accounts);

    // Call Smart Contract, deployed LanguageFeatures instance
    const LanguageFeatures = artifacts.require('LanguageFeatures');
    const languageFeatures = await LanguageFeatures.deployed();

    // Call the Smart Contract for Language Feature
    const val1 = await languageFeatures.add(3,5);
    const val2 = await languageFeatures.sub(5,3);
    console.log('Add(3,5) value is ', val1.toString());
    console.log('Sub(5,3) value is ', val2.toString());

    const obj1 = await languageFeatures.greeting();
    console.log('Greet Global  is  ', obj1[0]);
    console.log('Greet Local   is  ', obj1[1]);

    const obj2 = await languageFeatures.globalVars();
    console.log('GlobalVars Sender ', obj2[0].toString());
    console.log('GlobalVars Time   ', obj2[1].toString());
    console.log('GlobalVars Number ', obj2[2].toString());

    callback(0);
  } catch (error) {
    console.error(error);
    callback(1);
  }
};

