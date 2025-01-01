// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract Modifier {

    //Function modifier
    //Modifier is code that can be run after or before the function call
    //Generally used for (1) restrictions (2) validation of inputs (3) guards for hacks

    address public owner;
    int public x=10;
    bool public locked;
    string public secret_message;

    constructor(){
        owner =msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"Not owner");
        _; //in case it's true execute the rest of the code
    }

    modifier validateData(address _adr){
        require(_adr != address(0), "Invalid address");
        _;//execute the rest of the code
    }

    // function setX (int _x) public onlyOwner() validateData(_adr){
    //    x = _x;
    // }

    function checkOwner(address _newOwner) public onlyOwner() validateData(_newOwner){
        owner=_newOwner;
    } 

    function seeSecretMessage() public onlyOwner() {
        secret_message = "This is the secret message";
    }
    


}