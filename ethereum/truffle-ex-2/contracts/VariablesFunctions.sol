// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
/**
 * State / Local / Global Variables
 * Functions View and Pure
 */
contract VariablesFunctions {
  // State variable are stored in the Blockchain
  string private hello = "Hello World - Truffle - Ex-2";
  uint public specialNumber = 21;
  // Returns the Greetings - Hello (A State Variable)
  // View is used to do read-only view of the blockchain data
  function greeting() public view returns (string memory, string memory) {
      // Local Variable
      string memory hello2 = "Local Hello";
      return (hello, hello2);
  }

  // Global Variables - Part of Blockchain Data
  function globalVars() external view returns (address, uint, uint) {
      address sender = msg.sender;
      uint time = block.timestamp;
      uint number = block.number;
      return (sender, time, number);
  }

  // External and Pure (Read only) Calls for local variables
  function add(uint x, uint y) external pure returns(uint) {
    return x+y;
  }

  // External and View as it reads data from state variable
  function sub(uint y) external view returns(uint) {
    return specialNumber-y;
  }
 }
