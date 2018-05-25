pragma solidity ^0.4.24;
contract AutoForwardContract {
    event SenderLogger(address);
    address ownerAddress;
    function AutoForwardContract() {
        SenderLogger(msg.sender);
        ownerAddress = msg.sender;
        
    }

    function () public payable {
        require(msg.value >= 0.0001 ether);
        ownerAddress.transfer(msg.value);
        SenderLogger(msg.sender);
    } 
    
    
     
}
