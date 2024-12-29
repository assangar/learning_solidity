// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract NFTCounter {
    

    int public numberOfNFT=0;

    //Function: Add NFT
    function addNFT() public {
        numberOfNFT++;
    }

    //Function: Delete NFT
    function deleteNFT() public{
        numberOfNFT--;
    }

    //Check total number of NFTs
    function getTotalNFT() public view returns (int) {
        //Use public for public visibility
        //View for 
        //Returns for returning a variable 
        return numberOfNFT;
    }

}