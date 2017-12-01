pragma solidity ^0.4.4;

contract Adoption {
  address[16] public adopters;
  // adopting a pet
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
  }
  // Retrieving the adopters
  function getAdopters() public constant returns (address[16]) {
    return adopters;
  }
} // the word constant or view needed to be added to this funciton call.

// uint is an integer, you have to define the arguments AND the output!
// on line 8, the person or contract who called this function is msg.sender!


// SimpleStorage.deployed().then(function(instance){return instance.get.call();}).then(function(value){return value.toNumber()});
// returns 0
