// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract LanguageFeatures {
  uint256 private value;
  string private hello = "Hello World - Truffle";

  // Emitted when the stored value changes
  event ValueChanged(uint256 value);

  // Stores a new value in the contract
  function store(uint256 _value) public {
      value = _value;
      emit ValueChanged(value);
  }

  // Reads the last stored value
  function retrieve() public view returns (uint256) {
      return value;
  }

  // External and Pure (Read only) Calls
  function add(uint x, uint y) external pure returns(uint) {
    return x+y;
  }

  function sub(uint x, uint y) external pure returns(uint) {
    return x-y;
  }

 }
