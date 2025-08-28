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

   ![Deploy Token](screenshots/e1p1.jpg)
2. Transfer tokens between accounts.
    The mine amount is 0 now.
   ![Transfer Token](screenshots/e1p2.png)
3. Check balance after transfer.
    The balance of Alice account is 10 now after transfer.
  ![Balances](screenshots/e1p3.png)


---




