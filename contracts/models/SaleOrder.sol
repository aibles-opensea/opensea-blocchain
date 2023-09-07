// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev Structure of SaleOrder 
 * @param id id of the NFT
 * @param saleOrderId 0x + saleOrderId (mongoId)
 * @param price the price for sale of NFT
 * @param amount the amount of NFT want to sale
 * @param seller the address of the NFT owner
 * @param tokenAddress the address of the token used to purchase
 */
struct SaleOrder {
    uint256 id;
    uint256 saleOrderId;
    uint256 price;
    uint256 amount;
    address seller;
    address tokenAddress;
}