// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

 /**
 * 修饰符号的使用
 
 */
contract ModifysDemo{
   
    //在Solidity中，修饰符（Modifiers）是一种特殊类型的函数，它们可以被附加到另一个函数上来改变该函数的行为。修饰符可以在被修饰的函数执行之前或之后运行代码，或者在某些条件下阻止函数执行。
    //然而，需要注意的是，Solidity中没有直接名为modify的修饰符关键字；实际上，你定义修饰符时使用的是自定义的名称，然后在需要的地方使用这些名称来修饰函数。

    // 定义一个简单的修饰符，用于检查调用者是否是合约的拥有者  
    modifier onlyOwner() {  
        require(msg.sender == owner, "Only owner can call this function");  
        _; // 占位符，表示修饰符代码执行后，应继续执行被修饰的函数  
    }  
  
    address private owner;  
  
    constructor() {  
        owner = msg.sender; // 部署合约时，将部署者设置为拥有者  
    }  

    // 使用onlyOwner修饰符来限制对withdraw函数的访问  
    function withdraw(uint256 amount) public view  onlyOwner {  
    // 只有拥有者可以执行这里的代码  
    // ... 执行提款操作 ...  
        amount = amount+1;
    }
 }