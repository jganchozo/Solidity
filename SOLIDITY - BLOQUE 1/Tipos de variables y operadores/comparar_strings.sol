//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract compararStrings {

    function Comparar(string memory _j, string memory _i) public pure returns(bool) {

        bytes32 hash_i = keccak256(abi.encodePacked(_i));
        bytes32 hash_j = keccak256(abi.encodePacked(_j));
        
        return (hash_i == hash_j);
    }

    function compareStrings(string memory a, string memory b) public pure returns (bool) {    
        return compareMemory(bytes(a), bytes(b));
    }    
 
    function compareMemory(bytes memory a, bytes memory b) internal pure returns (bool) {
        return (a.length == b.length) && (keccak256(a) == keccak256(b));
    }
}