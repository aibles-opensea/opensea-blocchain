// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseModule.sol";

abstract contract Minting is BaseModule {
    function mint(
        address,
        address,
        string calldata
    ) external {
        delegatecall(mintingImpl);
    }
}
