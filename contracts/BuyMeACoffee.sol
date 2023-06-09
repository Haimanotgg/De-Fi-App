// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//Deployed to Sepolia address   0xb707685144862d1E298D6ae2748ef6A8351621b6

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

    address payable owner;

    
    Memo[] memos;

    constructor() {
        owner = payable(msg.sender);
    }

    
    function getMemos() public view returns (Memo[] memory) {
        return memos;
    }

  
    function buyCoffee(string memory _name, string memory _message) public payable {
    
        require(msg.value > 0, "can't buy coffee for free!");

 
        memos.push(Memo(
            msg.sender,
            block.timestamp,
            _name,
            _message

        ));

       
        emit NewMemo(
            msg.sender,
            block.timestamp,
            _name,
            _message
        );
    }

    
    function withdrawTips() public {
        // address(this).balance
        require(owner.send(address(this).balance));
    }
}
