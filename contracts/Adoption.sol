// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Adoption {
    address[16] public adopters;

    function adopt(uint256 giftId) public returns (uint256) {
        require(giftId >= 0 && giftId <= 15);

        adopters[giftId] = msg.sender;

        return giftId;
    }

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
