// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Pack721.sol";

contract ScalingEthereumFinalistPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "Scaling Ethereum Finalist", "EG-FINALIST-SCALING2024", "scaling2024-finalist");
    }
}
