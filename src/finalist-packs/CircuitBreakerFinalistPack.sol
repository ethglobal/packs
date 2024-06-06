// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Pack721.sol";

contract CircuitBreakerFinalistPack is Pack721 {
    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "Circuit Breaker Finalist", "EG-FINALIST-CIRCUITBREAKER", "circuitbreaker-finalist");
    }
}
