// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract Mapping {
    mapping(uint => string) public courseDetails; //declared mapping for first function
    mapping(uint256 => mapping(uint256 => string)) public courses; //declared mapping for second function



    function setValue(uint _courseID, string memory _courseName) public {
        courseDetails[_courseID] = _courseName;
    }

    function setTopic(uint256 courseId, uint256 topicId, string memory topicName) public {
        courses[courseId][topicId] = topicName;
    
    }

}