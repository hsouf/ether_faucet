pragma solidity ^0.6.0;

contract Reward {
    address payable  receiver;

    
    event Withdrawal(address indexed to, uint amount);
	event Deposit(address indexed from, uint amount);
    
function withdraw(uint withdraw_amount) public {
    require(address(this).balance>=withdraw_amount, "NOT ENOUGH ETHER BRO SORRY !");
    msg.sender.transfer(withdraw_amount);
    emit Withdrawal(msg.sender, withdraw_amount);
}

receive () external payable {
    emit Deposit(msg.sender, msg.value);
}
}
