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
    require(amount<=balances[msg.sender]);
    _allowance[msg.sender][spender] = amount;
    return  true;

  }
  function transferFrom(address from, address to, uint256 amount) external returns (bool){
    require(amount <= _allowance[from] [msg.sender]); //checks that amount< allowance for msg.sender
    require(amount <= balances[from]); // might not require
    _allowance[from][msg.sender]-=amount; // reduce the allowance for msg.sender or sender
    balances[from]-=amount; // reduce the balance of the owner
    balances[to]+=amount; // increase the balance of the receiver
    return true;
  }

  // To check the allowance
  function allowance(address owner, address spender) external view returns (uint256){
    return _allowance[owner][spender];
  }

  function balanceOf(address account) public view returns(uint256){
    return balances[account];
  }
}