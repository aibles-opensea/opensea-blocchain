// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../models/MintingEvent.sol";

library MintingEventHashing {
    function hash(MintingEvent memory data)
        internal
        pure
        returns (bytes32 digest)
    {
        return
            keccak256(
                abi.encodePacked(data.start, data.end, data.creator, data.id)
            );
    }
}
