pragma solidity ^0.4.23;

// Copyright 2017 Bittrex

contract SimplePaymentContract {
    event SenderLogger(address);
    function SimplePaymentContract() {
        SenderLogger(msg.sender);
       
    }

    function () public payable {
        SenderLogger(msg.sender);
    } 
}
