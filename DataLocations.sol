 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.24;

/**
在Solidity中，storage、memory 和 calldata 是三种数据存储位置，它们在以太坊智能合约的上下文中具有不同的用途和生命周期。以下是它们之间的主要区别：

        1. Storage
        用途：用于存储合约的持久化数据。当数据被写入storage时，它会被永久地存储在区块链上，并且可以通过交易来修改。
        生命周期：只要合约存在，storage中的数据就会一直存在。
        成本：写入storage（即设置状态变量）通常需要支付gas费用，因为这会修改区块链的状态。
        访问：可以通过合约的公共函数来读取和修改storage中的数据。
        示例：合约的状态变量（如uint public myVariable;）通常存储在storage中。
        2. Memory
        用途：用于在函数执行期间临时存储数据。当函数执行完毕后，memory中的数据会被丢弃。
        生命周期：仅在当前函数调用期间存在。
        成本：读取和写入memory通常不需要支付额外的gas费用（除了与操作相关的基本gas消耗）。
        访问：只能在当前函数内部访问memory中的数据。
        示例：函数内部的局部变量（如uint temp = 10;）通常存储在memory中。
        3. Calldata
        用途：用于在外部函数调用（如交易或消息调用）期间传递参数。calldata是外部函数调用的输入数据，它包含了要调用的函数及其参数。
        生命周期：仅在当前外部函数调用期间存在。
        成本：读取calldata不需要支付额外的gas费用，但处理它（如解码参数）可能会消耗gas。
        访问：只能在外部函数调用期间通过特定的函数（如msg.data）访问calldata。
        示例：当你调用一个智能合约的函数并传递参数时，这些参数就是通过calldata传递的。
        总结
        Storage 是用于存储合约的持久化数据的。
        Memory 是用于在函数执行期间临时存储数据的。
        Calldata 是用于在外部函数调用期间传递参数的。
        了解这些数据存储位置对于优化智能合约的gas消耗和性能非常重要。例如，尽量避免在循环中读取和写入storage，因为这可能会导致大量的gas消耗。相反，可以在memory中处理数据，然后在必要时再将其写入storage。

*/
 contract DataLocations {  
     
    uint256[] public arr;  
    mapping(uint256 => address) public map;  
  
    struct MyStruct {  
        uint256 foo;  
    }  
  
    mapping(uint256 => MyStruct) public myStructs;  
  
    function f() public {  
        // 直接操作状态变量，无需传递它们作为参数  
        _f(1); // 假设我们想要操作myStructs[1]  
  
        // 从映射中获取一个struct  
        MyStruct storage myStruct = myStructs[1];  
        myStruct.foo = 21;

        // 在内存中创建一个struct  
        MyStruct memory myMemStruct = MyStruct({foo: 0});  
        myStructs[2] = myMemStruct;

        // 注意：你不能直接将内存中的struct赋值给storage中的struct，但你可以分别设置字段  
    }  
  
    function _f(uint256 index) internal {  
        // 直接操作状态变量  
        myStructs[index].foo = 42; // 举例：设置myStructs[index]的foo字段为42  
    }  
  
    // 你可以返回内存变量  
    function g(uint256[] memory _arr) public pure returns (uint256[] memory) {  
        // 在这里处理内存数组，并返回一个新数组或修改后的数组  
        // ...  
        return _arr; // 举例：直接返回输入数组（通常你会返回一个新数组或修改后的数组）  
    }  
  
    function h(uint256[] calldata _arr) external {  
        // 在这里处理calldata数组，但你不能修改它  
        // ...  
    }  
}