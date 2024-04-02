// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {OFT} from "lib/layerzero-v2/oapp/contracts/oft/OFT.sol";
import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract Everywhere is OFT {
    constructor(string memory _name, string memory _symbol, address _layerZeroEndpoint, address _owner)
        OFT(_name, _symbol, _layerZeroEndpoint, _owner)
        Ownable(_owner)
    {
        _mint(msg.sender, 100 ether);
    }
}
