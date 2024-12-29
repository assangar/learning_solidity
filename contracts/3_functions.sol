// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract LearnFunction{ 
    int public hey=10;

    function getValueOfhe() public view returns (int){
        return hey;
    }

    function updateData(int number) public {
        hey = number;
    }

    function changeAndAdd(int a, int b)  public{
        hey = a+b;
    }

    function justAdd2Numbers(int a, int b) public view returns (int) {
        // hey = a+b; --> can't use this with view because with this keyboard a state variable cannot be changed
        return a+b;
    }
}