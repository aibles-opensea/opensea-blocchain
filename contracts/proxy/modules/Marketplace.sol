// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseModule.sol";

abstract contract Marketplace is BaseModule {
    function buy(
        uint256[] calldata,
        address[] calldata,
        bytes[] calldata,
        bytes[] calldata,
        string[] calldata
    ) external {
        delegatecall(marketplace);
    }

    function cancelEvent(
        uint256,
        uint256,
        address,
        bytes calldata,
        bytes calldata,
        bytes calldata,
        bytes calldata
    ) external {
        delegatecall(marketplace);
    }
}
