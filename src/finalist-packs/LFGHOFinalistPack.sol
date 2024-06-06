// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Pack721.sol";

contract LFGHOFinalistPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "LFGHO Finalist", "EG-FINALIST-LFGHO", "lfgho-finalist");
    }
}
