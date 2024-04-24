// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.15;

import {OptionsBuilder} from "lib/layerzero-v2/oapp/contracts/oapp/libs/OptionsBuilder.sol";

import "forge-std/console.sol";
import "forge-std/console2.sol";

contract OmniCounterTest {
    using OptionsBuilder for bytes;

    function setUp() public {}

    // classic message passing A -> B
    function test_increment() public view {
        bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(200000, 0);
        console.logString("===== OPTIONS IN BYTES FORMAT =====");
        console.logBytes(options);
        console.logString("===================================");
    }
}
