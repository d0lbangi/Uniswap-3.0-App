// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;
import '@openzeppelin\contracts\token\ERC20\ERC20.sol';


contract CustomToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 100000 * 10 ** 18);
    }
}

contract Uniswap {
    
    string[] public tokens = ['CoinA', 'CoinB', 'CoinC'];
    mapping(string => ERC20) public tokenInstanceMap;
    uint ethValue=100000000000000;
    
    constructor() {
        for(uint i = 0; i < tokens.length; i++){
            CustomToken token = new CustomToken(tokens[i], tokens[i]);
            tokenInstanceMap[tokens[i]] = token;
        }
    }
}
