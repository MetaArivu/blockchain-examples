// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Default Values / Constants
contract DefaultValuesConstants {
    uint public uintValue;      // 0
    int public intValue;        // 0
    bool public boolValue;      // false

    address public myAddress;   // 0x0000000000000000000000000000000000000000
    bytes32 public b32;         // 0x0000000000000000000000000000000000000000000000000000000000000000

    string public myPlace2 = "Kochi";
}
// Use Constants for State Variables where ever Possible
contract GasCostWithConstants {
    // 21420 gas 
    // Declare state variable as Constant to save Gas
    address public constant SENDER = 0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1;
    // 21819 gas
    // String 
    string public constant PLACE = "Kochi";
}
// Gas cost is very High without Constants
contract GasCostWithVariables {
    // 23553 gas
    // Declare state variable as Constant to save Gas
    address public sender = 0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1;
    // 24519 gas
    // String 
    string public place = "Kochi";
}