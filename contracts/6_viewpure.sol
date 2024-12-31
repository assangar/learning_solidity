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

    function calculate() public view returns(int product, int total){

        //With "view" you can access the state variable num1 & num3
        //You cannot change state variables with view keyword. You can only see the state variables 
        //If you want to change the state variable inside a function you have to remove the "view" keyword

        product = num1*num3;
        total = num1+num3;
        return (product, total);
    }

    function getData() public pure returns(int,int){
        int num5 = 20;
        int num6 = 40;

        return(num5, num6);
        //return(num1,num3); --> with "pure" keyword you cannot access state variables in a function
    }
}