
contract WithdrawPaymentContract {
    event SenderLogger(address);
    function WithdrawPaymentContract() {
        SenderLogger(msg.sender);
       
    }

    function () public payable {
        SenderLogger(msg.sender);
    } 
    
    function withdraw() public payable {
        msg.sender.transfer(this.balance);
        SenderLogger(msg.sender);
    } 
}
