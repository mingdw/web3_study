// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
*合约的常量类当中if 条件判断，与java类似
*/
contract ContractIfAndElseDemo{

 function foo(uint256 x) public pure returns (uint256) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint256 _x) public pure returns (uint256) {
        return _x < 10 ? 1 : 2;
    }
}