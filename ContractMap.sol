// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

 /**
 * 智能合约Mapping数据结构（类似java的map）
 */
 contract ContractMap{
 
    mapping(string => address) public map1;
    mapping(address => uint256) public map2;


    function get1(string memory key) public view returns (address){
        return map1[key];
   } 

    function get2(address key) public view returns (uint256){
        return map2[key];
   } 

    function set1(string memory key, address addr) public  {
         map1[key] = addr;
    }

    function set2(address _addr, uint256 _i) public {
        // Update the value at this address
        map2[_addr] = _i;
    }


   function removeKey1(string memory key) public {
        delete map1[key];
   }

    function removeKey2(address key) public {
        delete map2[key];
   }

    /**
        以下类似java的多层嵌套map
    */
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr1, uint256 _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint256 _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint256 _i) public {
        delete nested[_addr1][_i];
    }
    
    
 }