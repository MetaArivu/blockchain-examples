// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Default Values / Constants / Immutable
contract DefaultValuesConstants {
    // Default Value
    uint public uintValue;      // 0
    int public intValue;        // 0
    bool public boolValue;      // false

    address public myAddress;   // 0x0000000000000000000000000000000000000000
    bytes32 public b32;         // 0x0000000000000000000000000000000000000000000000000000000000000000

    string public myPlace2 = "Kochi";

    // 21885 gas
    // String 
    string public constant PLACE = "Kochi";
    // 24541 gas
    // String 
    string public place = "Kochi";

    // Gas cost is very High without Constants
    // 23667 gas
    // Declare state variable as Constant to save Gas
    address public sender = 0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1;

    // Gas Cost is less when you use Constant 
    // 21509 gas 
    // Declare state variable as Constant to save Gas
    address public constant SENDER = 0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1;

    // Gas Cost is very less for immmutable State Variable
    // 21442 gas
    // Immutable State variable - Initialized ONLY ONCE when its deployed
    address public immutable owner = 0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1;
}