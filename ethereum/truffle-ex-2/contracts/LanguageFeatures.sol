// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract LanguageFeatures {

  // State variable
  string private hello = "Hello World - Truffle - Ex-2";

  // Returns the Greetings - Hello World
  function greeting() public view returns (string memory) {
      string memory hello2 = "Local Hello";
      return hello;
  }

  // External and Pure (Read only) Calls
  function add(uint x, uint y) external pure returns(uint) {
    return x+y;
  }

  // External and Pure (Read only) Calls
  function sub(uint x, uint y) external pure returns(uint) {
    return x-y;
  }

 }
