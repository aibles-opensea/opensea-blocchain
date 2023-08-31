// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseHandler.sol";

abstract contract MintHandler is BaseHandler {

    // Add on functions, logics 
    function handleMint(
        MintingRequest memory mintRequest
    ) internal returns (uint256 tokenId) {

        tokenId = _mint(
            mintRequest.collection,
            mintRequest.receiver,
            mintRequest.uri
        );
    }
}
