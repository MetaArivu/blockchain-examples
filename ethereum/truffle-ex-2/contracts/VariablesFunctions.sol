// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
 // State / Local / Global Variables
 // Functions View and Pure, Fallback and receive functions
contract VariablesFunctions {
  // Function Visibility
  // ----------------------------------------------------------------------
  // private  - ONLY INSIDE the Contract
  // internal - ONLY INSIDE the Contract and CHILD Contracts
  // public   - INSIDE & OUTSIDE the Contract
  // external - ONLY OUTSIDE the Contract
  // ----------------------------------------------------------------------

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
  // Event
  event Log(string func, address sender,  uint value, bytes data);
  // Fallback
  fallback() external payable {
      emit Log("fallback", msg.sender, msg.value, msg.data);
  }
  // Receive
  receive() external payable {
      emit Log("receive", msg.sender, msg.value, "");
  }
  /**
     Ether is sent to Contract
                    |
            is msg.data is Empty?
                   /  \
                 Yes    No
     receive() exists?   fallback()
            /  \
         Yes    No
    receive()    fallback()
   */
 }
