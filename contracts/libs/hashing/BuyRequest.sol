// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../models/BuyRequest.sol";

library BuyRequestHashing {
    function hash(BuyRequest memory data)
        internal
        pure
        returns (bytes32 digest)
    {
        return
            keccak256(
                abi.encodePacked(
                    abi.encodePacked(
                        data.totalCopies,
                        data.onSaleQuantity,
                        data.price,
                        data.amount,
                        data.commissionRatio,
                        data.bdaRatio
                    ),
                    abi.encodePacked(
                        data.buyer,
                        data.payee,
                        data.paymentToken,
                        data.collection,
                        data.referrer,
                        data.bda
                    ),
                    data.nftId,
                    data.transactionId,
                    data.eventSignature,
                    data.uri
                )
            );
    }
}
