// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../common/Upgradeable.sol";
import "./Delegate.sol";

abstract contract BaseModule is Upgradeable, Delegate {}
