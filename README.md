# PoC-KonnektVPN
Vulnerability Details
1. Vulnerability Name: Reentrancy / Callback Attack on Smart Contracts
2. Vulnerability Type: Security Vulnerability
3. Severity: High
4. Location: claimTokens()

**Callback Attack on Smart Contracts**

A callback attack, often referred to as a reentrancy attack in the context of smart contracts, is a type of attack that exploits weaknesses in the smart contract's logic to perform unexpected callbacks. This allows the attacker to repeatedly call the same function before the previous execution completes, thereby exploiting the contract.

**How Callback Attack Works:**

1. **Attacker Initiates Transaction:**
   The attacker starts by calling a function in the victim's smart contract that performs a transfer of funds or status change.

2. **Attacker's Contract Calls Back:**
   Before the execution completes, the attacker's contract makes a callback to the victim's contract, calling the same function or a related function.

3. **Repetition (Reentrancy):**
   This process is repeated multiple times before the balance or state in the victim's contract is updated, allowing the attacker to withdraw more funds than they should.




