// SPDX-License-Identifier: MIT
//https://www.youtube.com/watch?v=RQzuQb0dfBM&t=60s
//https://www.youtube.com/watch?v=-YW2h8iYrYw&list=PLWUCKsxdKl0oksYr6IG_wRsaSUySQC0ck&index=7

pragma solidity >=0.7.0 <0.9.0;

contract EventTickets {
    uint256 public numberOfTickets;
    uint256 public ticketPrice;
    uint256 public totalAmount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timeRange;
    string public message = "Buy your first event ticket";

    constructor(uint256 _ticketPrice)  {
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt)/60/60/24;
    }

    function buyTicket (uint256 _value) public returns (uint256 ticketID){
        if ((totalAmount + _value) < 5)
        {
            numberOfTickets++;
            totalAmount += _value;
            ticketID = numberOfTickets;
        }else
        {
            message = "You can't buy more tickets";
        }
    }

}