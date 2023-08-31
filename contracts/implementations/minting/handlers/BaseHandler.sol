// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import "../../../common/Upgradeable.sol";
import "../../../interfaces/IOpenseaCloneNFT.sol";
import "../../../models/MintingRequest.sol";

abstract contract BaseHandler is Upgradeable {
    // Event
    event Minted(uint256 tokenId);

    // Functions
    function _mint(
        address collection,
        address to,
        string memory uri
    ) internal returns (uint256 tokenId) {
        // ? Mint NFT
        tokenId = IOpenseaCloneNFT(collection).safeMint(to, uri);
    }
}
