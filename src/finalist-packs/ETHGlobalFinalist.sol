// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Base721.sol";
import "../interfaces/IERC6551Registry.sol";
import "../interfaces/IERC6551Initializable.sol";

contract ETHGlobalFinalist is Base721 {
    error InvalidSignature();

    address public constant registry = 0x000000006551c19487814612e58FE06813775758;
    address public constant proxy = 0x55266d75D1a14E4572138116aF39863Ed6596E7F;
    address public constant implementation = 0x41C8f39463A868d3A88af00cd0fe7102F30E44eC;

    function initialize(address initialOwner) public initializer {
        _initialize(initialOwner, "ETHGlobal Finalist", "EG-FINALIST");
    }

    function _baseURI() internal pure override returns (string memory) {
        return string.concat("https://ethglobal.com/api/packs/ethglobal-finalist?id=");
    }

    function safeMint(address to, uint256 profileId) public onlyOwner {
        address tba = IERC6551Registry(registry).account(proxy, 0, block.chainid, address(this), profileId);

        if (tba.code.length == 0) {
            tba = IERC6551Registry(registry).createAccount(proxy, 0, block.chainid, address(this), profileId);
            IERC6551Initializable(tba).initialize(implementation);
        }

        _safeMint(to, profileId);
    }
}
