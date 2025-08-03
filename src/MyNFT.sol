//SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint256 public id;

    constructor() ERC721("10 Years of ETH", "ETH") {
        id = 0;
    }

    // mapping to map tokenuri
    mapping(uint256 => string) public tokenIdToURI;

    function tokenURI(uint256 _id) public view override returns (string memory) {
        return tokenIdToURI[_id];
    }

    function mintNFT(string memory tokenURI) public {
        tokenIdToURI[id] = tokenURI;
        _safeMint(msg.sender, id, "");
        id++;
    }
}
