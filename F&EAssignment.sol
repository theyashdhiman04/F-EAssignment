// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 private storedValue;
    address private owner;

    event ValueStored(uint256 newValue);

    constructor() {
        owner = msg.sender;
    }

    function storeValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than zero");
        storedValue = _value;
        emit ValueStored(_value);
    }

    function retrieveValue() public view returns (uint256) {
        return storedValue;
    }

    function checkStoredValue() public view {
        assert(storedValue != 0 && storedValue <= 1000);
    }

    function onlyOwnerCanCall() public view {
        if (msg.sender != owner) {
            revert("Only the owner can call this function");
        }
    }
    
    function specialFunction(uint256 _input) public pure returns (string memory) {
        if (_input <= 10) {
            revert("Input must be greater than 10");
        }
        return "Input is acceptable";
    }
}
