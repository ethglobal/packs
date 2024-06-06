// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Pack721.sol";

/// @custom:oz-upgrades-from src/v1/DenverPack.sol:DenverPack
contract DenverPackV2 is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "ETHGlobal Denver Pack", "EG-DEN", "denver");
    }
}
