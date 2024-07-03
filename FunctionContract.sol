 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.24;

 /**
 * 只能合约方法相关
 */
 contract FunctionContract {

     //函数可以返回多种类型
    function returnMany() public pure returns (uint256, bool, uint256) {
        return (1, true, 2);
    }

    //返回的函数可以有命名：比如以下：id、flag、score
    function returnMany2() public pure returns (uint256 id, bool flag, uint256 score) {
        return (1, true, 2);
    }

    //当使用返回函数命名时候，可以省略return
    // 定义一个返回两个值的函数，并给这些值命名  
    function getDetails() public pure returns (uint id, string memory name) {  
        // 在这里，我们不会将值“赋给”id或name，  
        // 而是计算或确定这些值，然后在函数结束时返回它们  
        id = 1; // 这里看起来像是赋值，但实际上是在设置返回值的一部分  
        name = "Alice"; // 同样，这里是在设置另一个返回值  
        // 函数执行结束时，会自动返回(id, name)这个元组  
    }  
  
    // 另一个函数，演示如何调用getDetails并访问其命名返回值  
    function useDetails() public pure returns (uint s){  
        // 调用getDetails函数，并通过解构赋值将返回值赋给局部变量  
        (uint detailId, string memory detailName) = getDetails();  
        //未使用会警告
        detailName;
        s =  detailId;
    
    }  

    /**
        pragma solidity ^0.8.0;  
  
        contract MyContract {  
             getDetails() public pure returns (uint id, string memory name) {  
                return (1, "Alice");  
            }  
        }
        在这个例子中，getDetails函数返回了一个包含uint类型的id和string类型的name的元组。
        现在，如果你想在另一个函数或合约中调用getDetails并接收这两个值，你可以使用解构赋值来做到这一点

        pragma solidity ^0.8.0;  
  
        contract AnotherContract {  
            MyContract public myContract;  
  
        constructor(address _myContractAddress) {  
            myContract = MyContract(_myContractAddress);  
        }  
  
        function useDetails() public view {  
            // 调用getDetails函数并使用解构赋值来接收返回值  
            (uint detailId, string memory detailName) = myContract.getDetails();  
  
            // 现在你可以使用detailId和detailName变量了  
            // 例如，打印它们到控制台（尽管在Solidity中你不能直接打印，但你可以通过事件或其他方式查看它们）  
        }  
        }
        在useDetails函数中，我们通过myContract.getDetails()调用MyContract合约中的getDetails函数，并使用解构赋值将返回的元组中的值分别赋给detailId和detailName两个变量。这样，我们就可以在useDetails函数内部直接使用这两个变量了。

    */


    /**

    // 允许你以任意顺序传递参数，只要每个参数都通过其名称明确指定。
contract XYZ {
    function someFuncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {}

    function callFunc() external pure returns (uint256) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    //不需要按照方法的定义顺序传参
    function callFuncWithKeyValue() external pure returns (uint256) {
        return someFuncWithManyInputs({
            a: address(0),
            b: true,
            c: "c",
            x: 1,
            y: 2,
            z: 3
        });
    }
}
    */
 }