// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract GlobalVariables {

    address public owner;
    address public myBlockHash;
    int public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    int public nowOn;
    address public origin;
    int public gasPrice;
    bytes public callData;
    bytes4 public FirstFour;

    constructor() payable {
        //msg.sender return the caller's address. It's a global variable and it can be 
        //accessed anywhere in the code. Whoever deploys the contract is the owner. We set that as the owner. The owner is initialized
        owner = msg.sender; 
        myBlockHash = block.coinbase;
        //difficulty = block.prevrandao;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        origin = tx.origin;
        callData = msg.data;
        FirstFour = msg.sig;
        value = msg.value;

    }

}