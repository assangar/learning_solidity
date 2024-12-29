// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract StateVariables {

    //State variables

    string public myState;
    string public myNum;
    string public defaultText = "Hola!";
    int public defaultNumber = 5;

    bytes public defaultByte="Hey Default"; //String is converted into byte hence it's more memory efficient
    bytes public defaultByteNo;

    constructor(string memory _myState, string memory _myNum ){
        myState = _myState;
        myNum = _myNum;
    }

    function updateData(string memory _myState, string memory _myNum ) public {
        myState = _myState;
        myNum = _myNum;

    }
    
    function localFunc() public {
        string memory localState = "London";
        string memory localNumber = "40";
        myState = localState;
        myNum = localNumber;
    }

    function localFunc2() public returns (string memory){
        string memory localState = "Seoul";
        return localState;
    }

}