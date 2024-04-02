// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {OFT} from "lib/layerzero-v2/oapp/contracts/oft/OFT.sol";
import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract OFT_Sepolia is OFT {
    string oftName = "OFT_Sepolia";
    string oftSymbol = "OFTS";
    address lzEndpoint = 0x6EDCE65403992e310A62460808c4b910D972f10f;

    constructor() OFT(oftName, oftSymbol, lzEndpoint, msg.sender) Ownable(msg.sender) {
        _mint(msg.sender, 101 ether);
    }
}
