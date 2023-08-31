// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IOpenseaCloneNFT {
    function safeMint(address to, string calldata uri)
        external
        returns (uint256 tokenId);

    function burn(uint256 tokenId) external;

    function setTokenURI(uint256 tokenId, string calldata tokenUri) external;
}
