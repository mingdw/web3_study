// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
*合约当中循环语句
*/
contract ContractLoopDemo{

   function loopFor(int x) public pure {
       for (int g = 0; g < x; g++){
            if (g == 100){
                break ;
            }
       }
    }

    function loopWhile(int _x) public  pure {
       while (_x < 1000){
            continue ;
       }
    }
}