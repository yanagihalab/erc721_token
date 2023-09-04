pragma solidity ^0.5.3;

import 'openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol';
import 'openzeppelin-solidity/contracts/ownership/Ownable.sol';

// NFT Chibanny token
contract ChibannyToken is ERC721Full, Ownable {
  
  using Counters for Counters.Counter;
  Counters.Counter private tokenId;
	
  struct Chibanny {
    string uri;
  }
  
  Chibanny[] public chibannys;

  constructor(
    string memory name,
    string memory symbol
  )
    ERC721Full(name, symbol)
    public
  {}
	
	
  // Returns the uri of a token	
  function getChibanny( uint256 chibannyTokenId ) public view returns(string memory uri){
    Chibanny memory _chibanny = chibannys[chibannyTokenId];

    uri = _chibanny.uri;
  }

  // Create a new Chibanny token
  function mint(string memory _uri) public payable onlyOwner {
    uint256 chibannyTokenId = tokenId.current();
    
    Chibanny memory _chibanny = Chibanny({ uri: _uri });
    chibannys.push(_chibanny);
    _mint(msg.sender, chibannyTokenId);
    _setTokenURI(chibannyTokenId, _uri);
    tokenId.increment();
  }
	
}
