// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Events {
    event MarketplaceImplChanged(
        address indexed oldImpl,
        address indexed newImpl
    );

    event MintingImplChanged(address indexed oldImpl, address indexed newImpl);
}
