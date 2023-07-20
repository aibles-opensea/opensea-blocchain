// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./common/Upgradeable.sol";
import "./interfaces/IERC721.sol";
import "./libs/ERC165Checker.sol";

import "./common/Events.sol";

contract NFTMarketplace is Upgradeable {
    // Library for checking which type of the given collection's address is.
    using ERC165Checker for address;

    function mint(
        address collection,
        uint256 id,
        uint256 amount,
        string calldata uri
    ) external {
        require(defaultCollections[collection], "ONLY DEFAULT COLLECTIONS");

        if (collection.isERC721Compatible()) {
            require(amount == 1, "ONLY_ONE_ERC721");
            IERC721(collection).safeMint(msg.sender, uri);
        } else revert("INVALID ADDRESS");

        emit Minted(collection, id, amount);
    }
}
