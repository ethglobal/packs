// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Pack721.sol";

contract FrameworksFinalistPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "Frameworks Finalist", "EG-FINALIST-FRAMEWORKS", "frameworks-finalist");
    }
}
