// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./OtherStruct.sol";

/**
    结构体，类似java的对象/类
*/
contract ContractStructs {

     /**
    * 性别枚举
    */
    enum Sex{
        MAN,
        WOMEN
    }


    /**
        定义结构体Todo
    */
     struct Student {
        string name;
        uint age;
        string phone;
        string idcard; 
        bool completed;
        Sex sex;
        OtherStruct.Class class; // 确保OtherStruct.sol中定义了Class结构体 

    }

   function initStu(string memory _name,uint _age,string memory _phone,string memory _idcard,bool _completed, Sex _sex, OtherStruct.Class memory  _class) public  pure returns (Student memory){

         Student memory student = Student({  
            name: _name,  
            age: _age,  
            phone: _phone,  
            idcard: _idcard,  
            completed: _completed,  
            sex: _sex,
            class: _class
        });  
        return student;  

   }

    
}