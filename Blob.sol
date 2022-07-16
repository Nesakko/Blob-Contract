// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts@4.7.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.7.0/access/Ownable.sol";

contract Blob is ERC20, Ownable {
    constructor() ERC20("Blob", "BLOB") {
        _mint(msg.sender, 65536 * 10 ** decimals());
    }
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }
}
