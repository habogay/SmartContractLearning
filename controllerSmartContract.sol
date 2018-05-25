pragma solidity ^0.4.24;

contract UserWallet {
    event OwnerLogger(address);
    address ownerAddress;
    function UserWallet(address oAddress) {
        ownerAddress=oAddress;
        OwnerLogger(ownerAddress);
        
        
    }
    event SenderLogger(address);
    function () public payable {
        require(msg.value >= 0.0001 ether);
        ownerAddress.transfer(msg.value);
        SenderLogger(msg.sender);
    } 
    
    
     
}

contract ControllerSmartContract {
    event SenderLogger(address);
    address ownerAddress;
    
    function ControllerSmartContract() {
        
        ownerAddress=msg.sender;
    }
    
    event CreateNewWallet(address);
    function makeWallet()  returns (address wallet)  {
        wallet = address(new UserWallet(ownerAddress));
        CreateNewWallet(wallet);
    }

    
    
}

