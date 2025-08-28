pragma solidity ^ 0.4.13;

contract bank_m{
    address public alice;
    address public bob;
    mapping(address => uint) public balances;

    constructor(address _alice, address _bob) public {
        alice = _alice;
        bob =_bob;
    }

    //Function to deposit
    //If the sender are alice and bob, accept other wise take the half and return other
    function deposit() public payable {
        if(msg.sender == alice){
            require(msg.sender > 0);
            balances[alice] += msg.value;
        }else if(msg.sender == bob){
            require(msg.sender>0);
            balances[bob]+=msg.value;
        }else{
            //Return the refund
            uint256 refund = msg.value/2;
            if(refund >0.00){
                msg.sender.transfer(refund);
            }
            //keep the remaining
        }
    }

    function withdraw(uint256 w) public{
        require(w>0);
        uint256 y = w * 1 ether;

        require(msg.sender == alice || msg.sender == bob);

        if(msg.sender == alice && balances[alice] >= y){
            balances[alice] -= y;
            msg.sender.transfer(y);
        }else if(msg.sender == bob && balances[bob] >= y){
            balances[bob] -=y;
            msg.sender.transfer(y);
        }else{
            revert();
        }
    }

    //Fallback handle Case 1: Plain ETH(no function call)

    function() public payable{

        uint256 refund = msg.value/2;
        if(refund>0){
            msg.sender.transfer(refund);
        }
    }

}