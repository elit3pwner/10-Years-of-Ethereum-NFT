//SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {MyNFT} from "../src/MyNFT.sol";

contract TestMyNFT is Test {
    MyNFT public myNFT;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    // deploying the contract
    function setUp() external {
        myNFT = new MyNFT();
    }

    function testNFTNameIsCorrect() public {
        assertEq(myNFT.name(), "10 Years of ETH");
    }

    function testMintNFT() public {
        vm.prank(bob);
        myNFT.mintNFT("10 Years of ETH");
        assertEq(myNFT.balanceOf(bob), 1);
        assertEq(myNFT.tokenURI(0), "10 Years of ETH");
        assertEq(myNFT.tokenIdToURI(0), "10 Years of ETH");
    }
}
