// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

//Creating a contract
contract DataTypes {

    string public name;
    uint public number;

    //creating the constructor -> it will run everytime the contract is deployed
    constructor(string memory _name, uint _number){
        name = _name;
        number = _number;
    }

    //========================= DATA TYPES =========================
    //bytes32 public name; //public is variable visibility where we can read the value of this outside the smart contract
    string public description = "This is my first contract";
    address public creator = 0x6fd16a829892Fa55fd34e950d724B4ee98718a48;
    bool public no = true;
    //uint8 public number = 10; //data type for numbers and small integers from 0-255
    int96 public signedNumber = 437;   ///<int96 is an alias for int128 or long long     

    //How to find out MIN and MAX of a number 
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

   
    
}