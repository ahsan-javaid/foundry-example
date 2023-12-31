// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";

import {Counter} from "../src/Counter.sol";
import {MyNFT} from "../src/ERC721.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new Counter(0);
        new MyNFT();
        vm.stopBroadcast();
    }
}
