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


}
