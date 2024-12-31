// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract Loops {
 
    uint public counter = 1;
    int[] public data;

    function whileLoop() public returns(int[] memory) {
        int i = 0; // Declare and initialize i

        while (i<10) {
            data.push(i);
            i++;}
        return data;
    }

    function doWhileLoop() public returns (int[] memory){
        int i = 0; // Declare and initialize i
        do{
            data.push(i);
            i++;
        }while(i < 10);
        
        return data;
    }

    function forLoop() public returns (int[] memory) {
        for(int i=0; i<10; i++){
            data.push(i);
        }
        return data;
    }

}