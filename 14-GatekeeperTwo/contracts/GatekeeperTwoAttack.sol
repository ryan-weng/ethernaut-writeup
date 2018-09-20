pragma solidity ^0.4.18;

import './GatekeeperTwo.sol';

contract GatekeeperTwoAttack {
    function GatekeeperTwoAttack() public {
        GatekeeperTwo gate = GatekeeperTwo(0x74cf2720007dafe8ff095ef556206675335aa8d2);
        bytes8 key = bytes8(uint64(keccak256(address(this))) ^ (uint64(0) - 1));
        gate.call(bytes4(keccak256('enter(bytes8)')), key);
    }
}
