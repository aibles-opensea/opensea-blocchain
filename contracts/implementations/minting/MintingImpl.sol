// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./handlers/MintHandler.sol";

contract MintingImpl is MintHandler {

   // Add-on functions, logics
   function mint(
        address collection,
        address to,
        string calldata uri
    ) external {
        MintingRequest memory mintRequest = MintingRequest({
            collection: collection,
            receiver: to,
            uri: uri
        });

        uint256 tokenId = handleMint(mintRequest);

        emit Minted(tokenId);
    }
}
