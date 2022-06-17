// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AmazonCoin is ERC20, Ownable {
    constructor() ERC20("AmazonCoin", "MTK") {}

    function mint( uint256 amount) public payable {
        require(msg.value == amount *0.0001 ether, "invalid amount of ethers");
        _mint(to, amount);
    }
    recieve() external payable{}
    fallback() external payable{}
}