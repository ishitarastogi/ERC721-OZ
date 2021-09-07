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

    function burnToken(uint _tokenId) public{
        require(ownerOf(_tokenId) == msg.sender, "You are not the owner of the token");

        _burn(_tokenId);
        removetokenID(_tokenId);
    }

        function removetokenID(uint _tokenID) internal{
            for(uint i=0;i<publicRecord[msg.sender].length;i++){
                
                    if(publicRecord[msg.sender][i].tokenId==_tokenID){
                            delete publicRecord[msg.sender][i].tokenId;
                    }


        }
    }

}
