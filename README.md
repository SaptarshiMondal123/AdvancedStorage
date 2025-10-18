## AdvancedStorage Smart Contract

An enhanced version of a basic storage contract built with Solidity.
This contract allows multiple users to store, track, and retrieve their own sets of numbers — complete with timestamps and event logs.

### 🧠 Overview

The AdvancedStorage contract enables each user to:

- Store multiple numbers (not just one!)

- Retrieve their full history of stored numbers

- View their most recently stored number

- Check when they last updated their data

- Each action is recorded on the blockchain, making it fully transparent and verifiable.

### ⚙️ Features

User-Specific Storage: Every address has its own independent storage history.

Data History: Keeps a record of all numbers a user has stored.

Timestamps: Tracks the exact time each user last updated their data.

Event Logging: Emits events whenever a new number is stored (useful for front-end integration).

### 🚀 How to Use

Deploy the contract using Remix IDE, Hardhat, or Foundry.

Call the store function to add a number to your personal storage history.

Use:

retrieveAll() → to get your full history

retrieveLatest() → to get your most recent number

lastUpdated() → to check the last update timestamp

### 🧩 Tech Stack

Language: Solidity

Compiler Version: ^0.8.28

Network: Ethereum-compatible (works on testnets like Sepolia, Goerli, or local Hardhat node)

### 🧾 Events

NumberStored(address user, uint256 number, uint256 timestamp)
Emitted whenever a user stores a new number.

### 🪪 License

This project is licensed under the MIT License.


