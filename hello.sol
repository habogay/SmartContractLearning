pragma solidity ^0.4.23;

// Copyright 2017 Bittrex

contract HelloContract {
    event SenderLogger(address);
    function HelloContract() {
        SenderLogger(msg.sender);
       
    }
}
