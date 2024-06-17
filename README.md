# Example Solidity Smart Contract

This repository contains a simple Solidity smart contract that demonstrates the use of `require()`, `assert()`, and `revert()` statements. These are essential tools for controlling the flow and ensuring the correctness of your smart contract.

## Overview

This contract, `ExampleContract`, includes the following key features:
- Store and retrieve a value.
- Ensure valid input using `require()`.
- Check for conditions that should never be false using `assert()`.
- Explicitly stop execution under certain conditions using `revert()`.

## Functions

### `storeValue(uint256 _value)`

Stores a value if it is greater than zero. Emits an event `ValueStored`.

- **Input:** A positive integer.
- **Output:** 
  - Stores the value if `_value` is greater than zero.
  - Reverts the transaction with an error message if `_value` is zero or negative.

### `retrieveValue()`

Retrieves the stored value.

- **Input:** None.
- **Output:** Returns the stored value.

### `checkStoredValue()`

Checks that the stored value is not zero and does not exceed 1000.

- **Input:** None.
- **Output:** 
  - Does nothing if the conditions are met.
  - Reverts the transaction if the conditions are not met.

### `onlyOwnerCanCall()`

Ensures that only the contract owner can call the function.

- **Input:** None.
- **Output:** 
  - Does nothing if the caller is the owner.
  - Reverts the transaction with an error message if the caller is not the owner.

### `specialFunction(uint256 _input)`

Checks that the input value is greater than 10.

- **Input:** An integer.
- **Output:** 
  - Returns "Input is acceptable" if `_input` is greater than 10.
  - Reverts the transaction with an error message if `_input` is 10 or less.

## Usage

To use this contract, deploy it to an Ethereum-compatible blockchain using a tool like Remix, Truffle, or Hardhat. Once deployed, you can interact with the functions as described above.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

This README provides a comprehensive overview of the smart contract, its functionality, and how to use it. Feel free to customize it further to fit your needs!
