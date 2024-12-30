// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract View {
    int num1=5;
    int num3=6;

    //Using view to check the state of the variables defined above
    function checkNums() public view returns(int,int) {
        return (num1, num3);
    }
}