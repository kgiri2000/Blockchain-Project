// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0; 
contract BaddToken {  
  uint _totalSupply = 0; string _symbol; 
  //mapping for balance 
  mapping(address => uint) balances;
  //mapping for allowance
  mapping(address => mapping(address => uint)) _allowance;  
  constructor(string memory symbol, uint256 initialSupply) {
    _symbol = symbol;
    _totalSupply = initialSupply;
    balances[msg.sender] = _totalSupply;  
  }
  
  function transfer(address receiver, uint amount) public returns (bool) {    
    require(amount <= balances[msg.sender]);        
    balances[msg.sender] = balances[msg.sender] - amount;    
    balances[receiver] = balances[receiver] + amount;    
    return true;  
  }
    // Aprrove  will add the amount from the balance of the msg.sender to allowance for the spender
  function approve(address spender, uint256 amount) external returns (bool){
    _allowance[msg.sender][spender] = amount;
    return  true;

  }
  function transferFrom(address from, address to, uint256 amount) external returns (bool){
    //checks that amount< allowance for msg.sender
    require(amount <= _allowance[from] [msg.sender]); 
    // checks that amount < balance of the owner
    require(amount <= balances[from]);  
    // reduce the allowance for msg.sender or sender
    _allowance[from][msg.sender]-=amount; 
    // reduce the balance of the owner
    balances[from]-=amount; 
    // increase the balance of the receiver
    balances[to]+=amount; 
    return true;
  }

  // To check the allowance
  function allowance(address owner, address spender) external view returns (uint256){
    return _allowance[owner][spender];
  }
  // to check the balance of the account
  function balanceOf(address account) public view returns(uint256){
    return balances[account];
  }
}

//Contract for AMMPool
contract AMMPool {
  BaddToken tokenX;
  BaddToken tokenY;
  // _tokenX and _tokenY are contract-addresses running BaddToken SC
  constructor(address _tokenX, address _tokenY){
    tokenX = BaddToken(_tokenX); tokenY = BaddToken(_tokenY);
  }

  function swapXY(uint amountX) public payable {
    require(amountX>0, "amountX = 0");
    // dy/dx = 2
    uint amountY = 2 * amountX;

    //allowance and pull
    //also checked in transfer from
    require(tokenX.allowance(msg.sender, address(this)) >= amountX, "Insufficient allowance"); 
    // Transfer amount X from Alice(X) to the Pool
    tokenX.transferFrom(msg.sender, address(this), amountX); 
    //Transfer using TokenY's tranfer to Alice or X of amountY
    tokenY.transfer(msg.sender, amountY); 

  } 
}