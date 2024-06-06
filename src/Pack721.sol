// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Base721.sol";

contract Pack721 is Base721 {
    uint256 private _nextTokenId;

    string public _packName;
    string public _packSlug;

    // token ID => expiry timestamp
    mapping(uint256 => uint256) public expiry;

    function _initialize(address initialOwner, string memory packName, string memory packSymbol, string memory packSlug)
        internal
    {
        _packName = packName;
        _packSlug = packSlug;
        _initialize(initialOwner, packName, packSymbol);
    }

    function _baseURI() internal view override returns (string memory) {
        return string.concat("https://ethglobal.com/api/packs/", _packSlug, "?id=");
    }

    function changePackDetails(string calldata packName, string calldata packSlug) external onlyOwner {
        _packName = packName;
        _packSlug = packSlug;
    }

    function changeExpiry(uint256 tokenId, uint256 _expiry) external onlyOwner {
        expiry[tokenId] = _expiry;
    }

    function safeMint(address to) public virtual onlyOwner {
        require(balanceOf(to) == 0, "ETHGlobal Pack: address already has a token");
        uint256 tokenId = _nextTokenId++;
        expiry[tokenId] = block.timestamp + (1 days * 365);
        _safeMint(to, tokenId);
    }
}
