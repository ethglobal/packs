// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Pack721.sol";

/// @custom:oz-upgrades-from src/v1/LondonPack.sol:LondonPack
contract LondonPackV2 is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "ETHGlobal London Pack", "EG-LDN", "london");
    }
}
