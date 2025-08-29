# Ethereum Smart Contract Exercise
This repository contains the solutions to Problem B1 **Exercise 1-6**.
Screenshots of the implementation process and execution results are provided for clarity.

## Table of Contents
1. [Exercise 1 - ERC20 Token Transfer](#exercise-1-erc20-token-transfer)
2. [Exercise 2 - Extended Token Contract](#exercise-2-extended-token-contract)

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


   ![Deploy Token](screenshots/e1p1.png?raw=true)
2. Transfer tokens between accounts.
    The mine amount is 0 now.
   <img width="1640" height="846" alt="e1p2" src="https://github.com/user-attachments/assets/3f6b19bd-66cb-43df-a1a5-2e81b8c1eedb" />

   ![Transfer Token](screenshots/e1p2.png?raw=true)
3. Check balance after transfer.
    The balance of Alice account is 10 now after transfer.
   <img width="1640" height="850" alt="e1p3" src="https://github.com/user-attachments/assets/9ce140e0-3a44-4c6d-b9f4-a6f3bd2fbde6" />

  ![Balances](screenshots/e1p3.png?raw=true)



## Exercise 2 - Extended Token Contract

Given that I went to look source code of uniswap V2 and have knowledge on how each token  are under ERC-20 compliant I started gathering more information.
The instruction were given clearly and with understanding of the concept of all the functions of ERC-20 token as well as solidity docs, writing the function was
not difficult.

**Process and Screenshots**
Alice Account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
Bob Account = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
Charlie Account = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db

1. Deploy BaddToken with balance of Alice = 1
    ![Initial](screenshots/e2p1.png?raw=true)
   <img width="1484" height="813" alt="e2p1" src="https://github.com/user-attachments/assets/ac2ff864-59c4-456e-8723-e0ee6343edef" />

2. A.approve(C,1)
    The allowance of C is 1 now.
   <img width="1670" height="814" alt="e2p2" src="https://github.com/user-attachments/assets/1f88c604-9237-4204-83d5-f77e18b03f31" />

    ![Allowance](screenshots/e2p2.png?raw=true)
3. C.transferFrom(A,B,1)
    The balance of B is 1 and allowance is 0
    ![TransferFrom](screenshots/e2p3.png?raw=true)
<img width="1670" height="814" alt="e2p3" src="https://github.com/user-attachments/assets/708fb13f-cf27-452d-a786-0714b87f19b0" />








