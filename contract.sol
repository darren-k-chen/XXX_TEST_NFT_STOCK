// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

// import "@openzeppelin/contracts/access/Ownable.sol";
// import "@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";

contract TESTNFTSTOCK is ERC1155 {
    uint256 public constant NFTSTOCK = 0;
    
    constructor() ERC1155("https://raw.githubusercontent.com/darren-k-chen/XXX_TEST_NFT_STOCK/main/{id}.json") {
        _mint(msg.sender, NFTSTOCK, 10**5, "");
    }

    function uri (uint256 _tokenId) override public view returns (string memory) {
        return string (
            abi.encodePacked (
                "https://raw.githubusercontent.com/darren-k-chen/XXX_TEST_NFT_STOCK/main/",
                Strings.toString(_tokenId),
                ".json"
            )
        );
    }
}