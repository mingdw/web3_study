// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
*合约当中的数组，类似java的list
*/
contract ContractArrayDemo  {
    bytes[] public strArray;
    uint256[] public arr2 = [1, 2, 3];

    constructor() {
        // explicit conversion of each string to its byte representation
        strArray = [bytes("zhangsan"), bytes("lisi"), bytes("wangwu")];  
    }

    function get(int i) public view returns  (bytes memory)  {
        return strArray[uint(i)]; // cast int to uint before indexing array. Solidity doesn't support signed integers for indexing arrays directly
    }

     function getu(uint256 i) public view returns (uint256) {
        return arr2[i];
    }

    /**
        插入一个数据
    */
     function push(uint256 i) public {
        // Append to array
        // This will increase the array length by 1.
        arr2.push(i);
    }

      /**
        拿一个数据
      */
     function pop() public {
        // Append to array
        // This will increase the array length by 1.
        arr2.pop();
    }

    /**
        获取数组长度
    */
     function getLength() public view returns (uint256) {
        return arr2.length;
    }



}