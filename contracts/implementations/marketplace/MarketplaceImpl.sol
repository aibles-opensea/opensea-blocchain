// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./handlers/BuyHandler.sol";


contract MarketplaceImpl is BuyHandler {
    /**
        @param data [0] totalCopies, [1] onSaleQuantity, [2] price, [3] amount
        @param addr [0] creator, [1] paymentToken, [2] collection, [3] payee
        @param internalId [0] nftId, [1] saleOrderId, [2] transactionId
        @param signature [0] eventSignature, [1] buyRequestSignature
        @param str [0] uri
     */
    function buy(
        uint256[] calldata data,
        address[] calldata addr,
        bytes[] calldata internalId,
        bytes[] calldata signature,
        string[] calldata str
    ) external {
        MintingEvent memory mintingEvent = MintingEvent({
            start: data[4],
            end: data[5],
            creator: addr[0],
            id: internalId[1]
        });

        BuyRequest memory buyRequest = BuyRequest({
            totalCopies: data[0],
            onSaleQuantity: data[1],
            price: data[2],
            amount: data[3],
            commissionRatio: data[6],
            bdaRatio: data[7],
            buyer: msg.sender,
            paymentToken: addr[1],
            collection: addr[2],
            payee: addr[3],
            referrer: addr[4],
            bda: addr[5],
            nftId: internalId[0],
            transactionId: internalId[2],
            eventSignature: signature[0],
            uri: str[0]
        });

        uint256[] memory tokenIds = handleBuy(
            mintingEvent,
            buyRequest,
            signature[1]
        );

        // emint event
    }

}