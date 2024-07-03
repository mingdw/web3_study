// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
*合约当中的数组，类似java的list
合约当中的数组，类似java的list
数组元素的移除操作
*/
contract ContractArrayRemoveDemo  {
    
    uint256[] public arr2 = [1, 2, 3,4,5,6,7,8,9,10];

    function getArrayLength() public  view  returns  (uint256){
        return arr2.length;
    }

    function inputArray() public view returns (uint256[] memory){
        return arr2;
    }

    function remove(uint256 index) public {
        // Move the last element into the place to delete
        for (uint256 i = index; i < arr2.length - 1; i++) {
            arr2[i] = arr2[i + 1];
        }
        // Remove the last element
        arr2.pop();
    }

}