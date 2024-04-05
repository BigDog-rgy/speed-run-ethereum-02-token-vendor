pragma solidity 0.8.4; //Do not change the solidity version as it negativly impacts submission grading
// SPDX-License-Identifier: MIT 

// import "@openzeppelin/contracts/access/Ownable.sol";
import "./YourToken.sol";

contract Vendor {
  uint256 public constant tokensPerEth = 100;
  YourToken public yourToken;

  event BuyTokens(address buyer, uint256 amountOfETH, uint256 amountOfTokens);

  constructor(address tokenAddress) {
    yourToken = YourToken(tokenAddress);
  }

  function buyTokens() external payable {
    uint256 amountToBuy = msg.value * tokensPerEth;
    
    yourToken.transfer(msg.sender, amountToBuy);

    emit BuyTokens(msg.sender, msg.value, amountToBuy);
  }
  // ToDo: create a payable buyTokens() function:

  // ToDo: create a withdraw() function that lets the owner withdraw ETH

  // ToDo: create a sellTokens(uint256 _amount) function:
}
