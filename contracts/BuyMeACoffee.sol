// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;



contract BuyMeACoffee {
    event NewMemo(
        address indexed from,
        uint timestamp,
        string name,
        string message
    );

    struct Memo{
        address from;
        uint timestamp;
        string name;
        string message;

    }
}
