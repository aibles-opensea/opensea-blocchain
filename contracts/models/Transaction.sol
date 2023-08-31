// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Transaction {
    bytes32 action;
    bytes requestSignature;
    bytes id;
}
