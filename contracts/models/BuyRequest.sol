// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct BuyRequest {
    uint256 totalCopies;
    uint256 onSaleQuantity;
    uint256 price;
    uint256 amount;
    uint256 commissionRatio;
    uint256 bdaRatio;
    address buyer;
    address payee;
    address paymentToken;
    address collection;
    address referrer;
    address bda;
    bytes nftId;
    bytes transactionId;
    bytes eventSignature;
    string uri;
}
