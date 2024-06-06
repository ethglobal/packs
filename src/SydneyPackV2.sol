// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Pack721.sol";

/// @custom:oz-upgrades-from src/v1/SydneyPack.sol:SydneyPack
contract SydneyPackV2 is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "ETHGlobal Sydney Pack", "EG-SYD", "sydney");
    }
}
