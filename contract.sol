// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";
// import "@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";

contract TEST_NFT_STOCK is ERC1155 {
    
    uint256 public constant XXX_TEST_NFT_STOCK = 0;
    
    constructor() ERC1155("https://raw.githubusercontent.com/darren-k-chen/XXX_TEST_NFT_STOCK/main/{id}.json") {
        _mint(msg.sender, XXX_TEST_NFT_STOCK, 10**5, "");
    }
}