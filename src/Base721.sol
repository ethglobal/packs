// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "multicaller/LibMulticaller.sol";

contract Base721 is
    Initializable,
    ERC721Upgradeable,
    ERC721PausableUpgradeable,
    OwnableUpgradeable,
    ERC721BurnableUpgradeable,
    UUPSUpgradeable
{
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _initialize(address initialOwner, string memory name, string memory symbol) internal virtual {
        __ERC721_init(name, symbol);
        __ERC721Pausable_init();
        __Ownable_init(initialOwner);
        __ERC721Burnable_init();
        __UUPSUpgradeable_init();
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function adminTransfer(address to, uint256 tokenId) public virtual onlyOwner {
        _safeTransfer(ownerOf(tokenId), to, tokenId);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function _checkOwner() internal view override {
        if (owner() != _msgSender() && owner() != LibMulticaller.sender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    // The following functions are overrides required by Solidity.

    // onlyOwner makes it non-transferrable
    function _update(address to, uint256 tokenId, address auth)
        internal
        override(ERC721Upgradeable, ERC721PausableUpgradeable)
        onlyOwner
        returns (address)
    {
        return super._update(to, tokenId, auth);
    }
}
