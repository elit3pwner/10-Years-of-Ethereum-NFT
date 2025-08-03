//SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Script} from "../lib/forge-std/src/Script.sol";
import {MyNFT} from "../src/MyNFT.sol";

contract DeployMyNFT is Script {
    
    MyNFT public myNFT; 

    // function to deploy MyNFT
    function run() external {
        vm.startBroadcast();
        myNFT = new MyNFT();
        vm.stopBroadcast();
    }

}