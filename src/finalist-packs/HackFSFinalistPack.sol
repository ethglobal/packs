// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Pack721.sol";

contract HackFSFinalistPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "HackFS Finalist", "EG-FINALIST-HACKFS2024", "hackfs2024-finalist");
    }
}
