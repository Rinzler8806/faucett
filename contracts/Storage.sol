// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Storage {

    // keccack256(key . slot)
    mapping(uint => uint) public aa; //slot 0
    mapping(address => uint) public bb; //slot 1

    // keccack256(slot) + index of the item
    uint[] public cc; //slot 2

    uint8 public a = 7; // 1 byte
    uint16 public b = 10; // 2bytes
    address public c = 0x2323c75E8D45F1fe9d60dD3B6Ec3e473D5608bbB; // 20bytes
    bool d = true; // 1 byte
    uint64 public e = 15; //8bytes
    //32 bytes, all values will be stored in slot 3

    //0x 0f 01 2323c75e8d45f1fe9d60dd3b6ec3e473d5608bbb 000a 07

    uint256 public f = 200; // 32bytes -> slot 4
    uint8 public g = 40; // 1byte -> slot 5
    uint256 public h = 789; // 32bytes -> slot 6

    constructor() {
        cc.push(1); // 0
        cc.push(10); // 1
        cc.push(100); // 2

        aa[2] = 4;
        aa[3] = 10;

        bb[0x2323c75E8D45F1fe9d60dD3B6Ec3e473D5608bbB] = 100;
    }
}

// 0x000000000000000000000002323c75E8D45F1fe9d60dD3B6Ec3e473D5608bbB00000000000000000000000000000000000000000000000000000000000000001

// 0000000000000000000000000000000000000000000000000000000000000002

// 29102676481673041902632991033461445430619272659676223336789171408008386403024