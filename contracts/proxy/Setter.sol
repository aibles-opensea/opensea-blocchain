// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Events.sol";
import "../common/Upgradeable.sol";

abstract contract Setter is Upgradeable, Events {
    function setMarketplaceImpl(address newMarketplaceImpl)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        emit MarketplaceImplChanged(marketplace, newMarketplaceImpl);
        marketplace = newMarketplaceImpl;
    }

    function setMintingImpl(address newMintingImpl)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        emit MintingImplChanged(mintingImpl, newMintingImpl);
        mintingImpl = newMintingImpl;
    }
}
