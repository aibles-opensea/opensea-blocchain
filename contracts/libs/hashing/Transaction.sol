// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../models/Transaction.sol";

library TransactionHashing {
    function hash(Transaction memory data)
        internal
        pure
        returns (bytes32 digest)
    {
        return
            keccak256(
                abi.encodePacked(data.action, data.requestSignature, data.id)
            );
    }
}
