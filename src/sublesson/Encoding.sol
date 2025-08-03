//SPDX-License-identifier: MIT
pragma solidity 0.8.28;

contract Encoding {
    function combineStrings() public pure returns (string memory) {
        return string(abi.encodePacked("First", "Second"));
    }

    function encodeNumber() public pure returns (bytes memory) {
        bytes memory encodedNumber = abi.encode(1);
        return encodedNumber;
    }

    function encodeString() public pure returns (bytes memory) {
        bytes memory encodedString = abi.encode("random string");
        return encodedString;
    }

    // encodePacked is basically more compressed than encode
    function encodeStringPacked() public pure returns (bytes memory) {
        bytes memory encodedPackedString = abi.encodePacked("random string");
        return encodedPackedString;
    }

    // bytes give same result as encodePacked
    function encodeStringBytes() public pure returns (bytes memory) {
        bytes memory encodedByteString = bytes("random string");
        return encodedByteString;
    }

}
