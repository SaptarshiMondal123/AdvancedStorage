// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract AdvancedStorage {
    struct UserData {
        uint256[] numbers;
        uint256 lastUpdated;
    }

    mapping(address => UserData) private users;

    // Event to emit whenever a number is stored
    event NumberStored(address indexed user, uint256 number, uint256 timestamp);

    // Function to store a number for the sender
    function store(uint256 _number) public {
        users[msg.sender].numbers.push(_number);
        users[msg.sender].lastUpdated = block.timestamp;
        emit NumberStored(msg.sender, _number, block.timestamp);
    }

    // Function to retrieve all numbers stored by the sender
    function retrieveAll() public view returns (uint256[] memory) {
        return users[msg.sender].numbers;
    }

    // Function to retrieve the latest number stored by the sender
    function retrieveLatest() public view returns (uint256) {
        uint256 length = users[msg.sender].numbers.length;
        require(length > 0, "No numbers stored yet");
        return users[msg.sender].numbers[length - 1];
    }

    // Function to get the last update timestamp for the sender
    function lastUpdated() public view returns (uint256) {
        return users[msg.sender].lastUpdated;
    }
}
