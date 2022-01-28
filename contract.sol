// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";

contract Marvel1155 is ERC1155PresetMinterPauser {
    
    uint256 public constant XXX_TEST_NFT_STOCK = 0;
    
    constructor() ERC1155PresetMinterPauser( "https://darren-k-chen.github.io/XXX_TEST_NFT_STOCK/config.json") {
        _mint(msg.sender, XXX_TEST_NFT_STOCK, 10**5, "");
    }
    
}