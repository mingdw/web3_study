// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

 /**
 * 智能合约int类型加减操作
 */
contract IncAndDecContract{
    uint256  public  count ;

    function getCount() public view returns (uint256){
        return count;
    }

    function setCount(uint256 c) public  returns (uint256){
        count = c;
        return count;
    }

    function inc() public {
        count = count+1;
    } 

    function dec() public {
        count = count-1;
    } 

}

