// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//数据位置
contract Variables{

    /**
      *  local 方法体里面：数据存储在内存，是易失的，其生命周期与函数调用生命周期一致，函数调用结束数据就消失了
      *  state 方法之外：不存储在链上
      *  global  全局的：存储在链上
      */
    string  public text = "Hello";
    uint256  public num = 123;
    uint256 timestamp = block.timestamp;
     function doSomething() public view {
       
        uint256 i = 456;
        i++;
      

        address sender = msg.sender;
        sender.codehash;

    }
    
}