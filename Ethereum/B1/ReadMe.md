# Ethereum Smart Contract Exercise
This repository contains the solutions to Problem B1 **Exercise 1-6**.
Screenshots of the implementation process and execution results are provided for clarity.

## Table of Contents
1. [Exercise 1 - ERC20 Token Transfer](#exercise-1-erc20-token-transfer)
2. [Exercise 2 - Extended Token Contract](#exercise-2-extended-token-contract)
3. [Exercise 3 - AMM Deisgn with Fixed Rate](#exercise-3-amm-design)
4. [Exercise 4 - Security Analysis](#exercise-4-security-analysis).
---

## Exercise 1 - ERC20 Token Transfer
This was fairly easy exercise. First, I had to familarize with remix; however, I had previously completed A2 Exercise so, this was not a problem.
I would say learning about ethereum from the official docs was very helpful as it taught me on how it works. Basically, all the information about the
blockchain, MPT(data storage), gloal state Trie, Transcation Trie, Receipt Trie, Storage Trie, how Contract Account and EOA accounts are made and how do they go to the blockchain, EVM.
Also, Uniswap official docs with other resources helped me to learn how this Decentralized exchange allows to swap ERC-20 tokens.
I did some experiments with Uniswap V1 and V2, basical, understanding how it works from very fundamental level.
V1 is simple and easy to understand but V2 with introduction of smart contracts like Factory, Router, Pair helped me alot to do these exercises.

**Process and Screenshots**

1. Deploy "BaddToken in Remix.
    0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 = me
    0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 = Alice
   <img width="1514" height="830" alt="e1p1" src="https://github.com/user-attachments/assets/6c389455-a593-4935-98b4-5ab47f08fae3" />
   
2. Transfer tokens between accounts.
    The mine amount is 0 now.
   <img width="1640" height="846" alt="e1p2" src="https://github.com/user-attachments/assets/3f6b19bd-66cb-43df-a1a5-2e81b8c1eedb" />
3. Check balance after transfer.
    The balance of Alice account is 10 now after transfer.
   <img width="1640" height="850" alt="e1p3" src="https://github.com/user-attachments/assets/9ce140e0-3a44-4c6d-b9f4-a6f3bd2fbde6" />

## Exercise 2 - Extended Token Contract

Given that I went to look source code of uniswap V2 and have knowledge on how each token  are under ERC-20 compliant I started gathering more information.
The instruction were given clearly and with understanding of the concept of all the functions of ERC-20 token as well as solidity docs, writing the function was
not difficult.

**Process and Screenshots**
Alice Account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
Bob Account = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
Charlie Account = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db

1. Deploy BaddToken with balance of Alice = 1
   <img width="1484" height="813" alt="e2p1" src="https://github.com/user-attachments/assets/ac2ff864-59c4-456e-8723-e0ee6343edef" />

2. A.approve(C,1)
    The allowance of C is 1 now.
   <img width="1670" height="814" alt="e2p2" src="https://github.com/user-attachments/assets/1f88c604-9237-4204-83d5-f77e18b03f31" />
   
3. C.transferFrom(A,B,1)
    The balance of B is 1 and allowance is 0
<img width="1670" height="814" alt="e2p3" src="https://github.com/user-attachments/assets/708fb13f-cf27-452d-a786-0714b87f19b0" />

---

##
Exercise 3 - AMM Deisgn with Fixed Rate
1. Initially, Alice has 1 tokenX, and 2 tokenY. Then, we send the 2 tokenY to the AMM pool where Alice is acting as Liquidity Provider. Hence, AMMpool has 2 
    tokenY.
    All the other field are zero.
    Alice Account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    TokenX = 0x93f8dddd876c7dBE3323723500e83E202A7C96CC
    TokemY = 0x5A86858aA3b595FD6663c2296741eF4cd8BC4d01
    AMMpool = 0x406AB5033423Dcb6391Ac9eEEad73294FA82Cfbc
    As shown in the picture below, the tokenX of A is 1 and tokenY of pool is 2
   ![e3p1](https://github.com/user-attachments/assets/29b5cad7-ec24-4cf4-91ec-7ac744f5d642)

2. When we approve the 1 token, allowance from Alice to Pool icreases by 1.
   ![e3p2](https://github.com/user-attachments/assets/0305c552-4294-46f9-a09d-c3281f6454fe)

3. Now, implementing swap function was easy as I had prior theoretical knowledge on uniswap v1 and v2 with some coding practises as well. Hence, after we do swap,
   the balance of Alice decreases and the balance of tokenY of Alice increases and the tokenY of pool decreases.
   First image shows that the balance of pool in tokenX = 1 and tokenY is 0
   Seconf image shows that the balance of Alice in tokenX is 0 and tokenY is 2
   
   ![e3p3](https://github.com/user-attachments/assets/aaef9d1b-c4c6-4b79-be2a-120ff355528e) ![e4p4](https://github.com/user-attachments/assets/5b5d180b-6008-472f-8407-82eafb87f718)

---
Exercise 4 - Security Analysis








