//SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Script} from "../lib/forge-std/src/Script.sol";
import {MyNFT} from "../src/MyNFT.sol";

contract MintNFT is Script {
    function run() external {
        address nftContractAddress = 0x19F76A69fFD3C6f4F3053513B601e59922D16cEd;

        vm.startBroadcast();
        MyNFT(nftContractAddress).mintNFT("ipfs://bafybeifsexiiy4rkwr62m3ha4zcrxfo3dnjlhqqxwezxhemz3os5vbww7m/metadata.json");
        vm.stopBroadcast();
    }
}