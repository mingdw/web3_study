// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
*合约的枚举类,与java不同的是solidity只能是单属性的枚举,其默认属性就是0，1，2，3...
*/
contract ContractEnum {
   enum OrderType {
        ALIPAY,
        WECHAT,
        ICBC,
        MASTER,
        PAYPAL
   }

   OrderType public orderType;


    function getOrderType() public view  returns (OrderType){
        return orderType;
    }


    function set(OrderType _orderType) public {
        orderType = _orderType;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete orderType;
    }

    function input() public view returns (ContractEnum){
        return this;
    }
}