// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

/**
    @dev Base contract for OpenseaClone and its marketplace and redemption to inherit.
    
    [STORAGE SLOT]
    - Initializable: 1 slot
    - UUPSUpgradeable: 50 slots
    - ERC1967UpgradeUpgradeable: 50 slots
    - AccessControlUpgradeable: 50 slots
    - ContextUpgradeable: 50 slots
    - ERC165Upgradeable: 50 slots

 */
// todo: Rearrange variables.
contract Upgradeable is UUPSUpgradeable, AccessControlUpgradeable {
    // starts at [251]
    address public marketplace;
    address public mintingImpl;

    /**
        @dev Required.
     */
    function _authorizeUpgrade(
        address
    ) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
