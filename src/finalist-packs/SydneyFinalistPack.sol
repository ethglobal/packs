// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Pack721.sol";

contract SydneyFinalistPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "ETHGlobal Sydney Finalist", "EG-FINALIST-SYDNEY", "sydney-finalist");
    }
}
