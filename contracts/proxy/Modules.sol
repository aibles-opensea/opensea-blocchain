// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./modules/Marketplace.sol";
import "./modules/Minting.sol";

abstract contract Modules is Marketplace, Minting {}
