// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Pack721.sol";

contract LondonFinalistPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "ETHGlobal London Finalist", "EG-FINALIST-LONDON2024", "london2024-finalist");
    }
}
