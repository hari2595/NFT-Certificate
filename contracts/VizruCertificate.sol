pragma solidity ^0.5.0

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract certi is ERC721, Ownable {

    struct Metadata {
        string name;
        string level;
        uint64 id;
        uint32 score;
        uint256 dateOfCertification
    }

    uint256 public tokenCounter;
    constructor () public ERC721 ("Vizru", "VIZR"){
        tokenCounter = 0;
    }

    function createCollectible(string memory tokenURI) public returns (uint256) {
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }

}