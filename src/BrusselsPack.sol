// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Pack721.sol";

contract BrusselsPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "ETHGlobal Brussels Pack", "EG-BRU", "brussels");
    }
}
