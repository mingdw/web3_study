// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

 /**
 * 智能合约：原始数据类型
 */
 contract primitiveDataTypes{

    /*
      布尔类型
    */
    bool public flag = true;

    /*
      uint8的取值范围：0 ~ 2^8 - 1
      uint256的取值范围：0 ~ 2^256 - 1
    */
    uint8 public u8 = 12;
    uint256 public u256 = 456;
    uint256 public u = 123; // uint is an alias for uint256

    /*
      int8的取值范围：-2^8 - 1 ~ 2^8 - 1
      int256的取值范围：0 ~ 2^256 - 1
    */
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123; // int is same as int256


     // minimum and maximum of int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;


    uint256 public minUint = type(uint256).min;
    uint256 public maxUint = type(uint256).max;


    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    address public defaultAddr; 

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;


     function getMinInt() public view returns (int256){
        return minInt;
    }

    function getMaxInt() public view returns (int256){
        return maxInt;
    }


      function getMinUint() public view returns (uint256){
        return minUint;
    }

    function getMaxUint() public view returns (uint256){
        return maxUint;
    }

    function getDefaultAddress() public view returns (address){
      return  defaultAddr;
    }

 }