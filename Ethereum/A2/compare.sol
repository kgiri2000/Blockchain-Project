pragma solidity ^ 0.4.13;
contract bank_m{
    address public alice;
    address public bob;
    address public charlie;
    //Each BackAccount
    mapping(address => uint256) private balances;
    constructor(address _alice, address _bob, address _charlie) public{
        alice = _alice;
        bob = _bob;
        charlie = _charlie;
    }

    function deposit() public payable {
        require(msg.sender == alice || msg.sender == bob || msg.sender == charlie);
        require(msg.value > 0);
        if(msg.sender ==  alice || msg.sender == bob){
            balances[msg.sender] += msg.value;
        }else if(msg.sender == charlie){
            balances[msg.sender] += msg.value/2;
            msg.sender.transfer(msg.value/2);
        }

    }
    function withdraw(uint256 w) public{
        require(msg.sender == alice || msg.sender == bob);
        uint256 y = w * 1  ether;
        
        if(msg.sender == alice && y < balances[msg.sender]){
            msg.sender.transfer(y);
            balances[msg.sender] -=y;
        }else if(msg.sender == bob && y < balances[msg.sender]){
            msg.sender.transfer(y);
            balances[msg.sender] -=y;

        }

    }
    //Non-payable fallback
    function() public {
        revert();
    }
}

