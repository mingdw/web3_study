 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.24;

 /**
 * 只能合约方法相关

    Pure修饰符
    --使用 pure 修饰的函数保证不会读取或修改区块链上的任何状态（包括合约的存储和其他合约的状态）。
    --它们只能使用其参数和内部定义的局部变量来计算返回值。
    --由于它们不依赖于区块链状态，因此可以在链下（即不消耗gas）安全地调用。




    View修饰符
    --使用 view 修饰的函数保证不会修改区块链上的任何状态，但它们可以读取区块链的状态，包括合约的存储和其他合约的状态。
    --它们可以基于区块链的当前状态来计算返回值，但不会在区块链上留下任何修改的痕迹。
    --由于它们可能依赖于区块链状态，因此必须在链上调用（会消耗gas）

 */
 contract FunctionViewAndPureDemo {

    uint public count = 0; 
    //pure 修饰的方法返回值只能方式内部计算，不能读取外部变量
     function getSum(uint a, uint b) public pure returns (uint) {  
       // count+1会报错
        return a + b;  
    }  

      
  
    function increment() public {  
        count += 1; // 修改状态，因此不是view或pure  
    }  
  
    function getCount() public view returns (uint) {  
        // count = count+1 报错
        return count; // 读取状态，但不修改  
    }  

 }