 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.24;

 /**
 * 智能合约hello world
 */
 contract HelloWorld{
    string public firstWorld = "Helle solidity";

    function setStr(string memory message) public {
        firstWorld = message;
    }

    function getStr() public view returns ( string memory) {
        return firstWorld;
    }
    
 }