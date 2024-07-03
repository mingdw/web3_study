// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
*合约当中gas计算说明:类似于交易手续费
How much ether do you need to pay for a transaction?

在以太坊（Ethereum）和其他一些基于以太坊的区块链平台上，Gas 是一个核心概念，它与交易执行和智能合约的运行密切相关。简单来说，Gas 是以太坊网络上执行特定操作（如交易或智能合约函数）所需的计算资源或“燃料”的度量单位。

以下是关于 Gas 的几个关键点：

交易费用：当你向以太坊网络发送一个交易（如转账、部署智能合约或调用智能合约函数）时，你需要支付一定数量的 Gas 作为费用。这个费用支付给矿工，以激励他们验证和打包你的交易到区块链中。
Gas Price：Gas Price 是你愿意为每单位 Gas 支付的费用（以 ETH 为单位）。Gas Price 是由市场供需关系决定的，你可以根据网络拥堵情况和你的交易优先级来设置 Gas Price。
Gas Limit：Gas Limit 是你愿意为单个交易支付的最大 Gas 数量。这可以防止由于代码错误或恶意攻击导致交易无限期地执行，从而消耗大量计算资源。如果交易使用的 Gas 超过了 Gas Limit，那么交易将被视为失败，并且已支付的 Gas 费用将被销毁（即不会被退回）。
Gas 消耗：不同的操作在以太坊网络上消耗的 Gas 数量是不同的。例如，简单的转账交易可能只需要很少的 Gas，而复杂的智能合约函数可能需要更多的 Gas。你可以使用以太坊的官方工具（如 Remix IDE 或 etherscan 的 Gas 估算器）来估算你的交易将消耗多少 Gas。
Gas 费用与矿工收入：矿工通过验证和打包交易到区块链中来赚取奖励。这些奖励包括区块奖励（即新发行的 ETH）和交易费用（即 Gas 费用）。因此，Gas 费用是矿工收入的重要来源之一。
*/
contract GasDesc{
    uint256 public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function forever() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}