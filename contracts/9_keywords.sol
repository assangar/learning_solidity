// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract Keywords {

    int public overflow=0;

    function checkInputs(uint256 _input) public pure returns (string memory){

        //require is used to validate inputs and conditions before execution.
        require(_input>=0, "Invalid input. Must be more than 0");
        require(_input<256, "Invalid input. Must be less than 256");
        return "Input is UINT";
    }

    function OddNumberChecker(int _input) public returns (string memory){
        //require is used to validate inputs and conditions before execution.
        require(_input%2==0, "Please enter odd number");
        return "Even Number";
    }

    function checkOverflow(int _num1, int _num2) public  returns (string memory){
        
        //assert is used to check for code that should never be false. Failing assertion probably means that there is a bug.
        overflow = _num1 + _num2; //addition of 2 numbers will have an overflow when the sum is greater than 7. That is why this line of code checks if the sum exceeds 7 and returns a string. The condition here uses "==" to check if it is equal to 0.
        assert(overflow < 200);
        return "No Overflow";
    }

    function checkRevertOverflow(int _num1, int _num2) public view returns (string memory, int){
        int sum = _num1+_num2;
        if (sum < 0 || sum > 255) {
            revert("Overflow exists");
        } else {
            return ("No Overflow", sum);
        }
    }
    
}
 