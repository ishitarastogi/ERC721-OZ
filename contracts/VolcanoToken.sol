// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VolcanoToken is ERC721, Ownable {
    constructor() ERC721("VolcanoToken", "VTC") {
    }

    uint256 public tokenId;

    struct tokenDetails{
        uint timestamp;
        string  tokenURI;
        uint tokenId;
    }

    mapping(address => tokenDetails[]) publicRecord;


    function createToken(string memory data) public {
        _safeMint( msg.sender,  tokenId);
        publicRecord[msg.sender].push(tokenDetails(block.timestamp,data,tokenId));
        tokenId++;

    }

}
