// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;



contract Transaction {
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, string keyword, uint timestamp);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;        
        string message;
        string keyowrd;
        uint256 timestamp;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
       transactionCount += 1;
       transactions.push(TransferStruct(msg.sender, receiver, amount, message, keyword, block.timestamp));
    }

    function getAllTransactions() public view returns(TransferStruct[] memory ) {
        return transactions;
    }

    function getTransactionCount() public view returns(uint256) {
        return transactionCount;
    }
}