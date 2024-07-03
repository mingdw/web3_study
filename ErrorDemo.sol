 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.24;

 /**
 * soilidity的error
 */
 contract ErrorDemo {
    //require用于验证外部输入或状态条件，并在不满足时回滚事务。
    //revert用于更一般性的错误处理，也可以回滚事务。
    //assert用于捕获代码中的内部错误，理论上不应该发生。

     mapping(address => uint256) public balances;  
  
    function transfer(address to, uint256 amount) public {
        //验证金额是否足够  
        require(amount <= balances[msg.sender], "Insufficient balance");  
        balances[msg.sender] -= amount;  
        balances[to] += amount;  
    }  

    function doSomething(bool condition) public pure {  
        if (!condition) {  
            revert("Condition not met, rolling back");  
        }  
        // 如果condition为true，则继续执行后续代码  
    }  

    uint[] public numbers;  
  
   function setNumber(uint index, uint value) public {    
    // 使用require来验证外部输入  
    require(index < numbers.length || index == numbers.length, "Index out of bounds or can add new element");    
    if (index == numbers.length) {  
        // 如果索引等于数组长度，增加数组长度  
        numbers.push(0); // 或者直接设置值，如果不需要初始化额外的0  
    }  
    numbers[index] = value;    
    }
 }