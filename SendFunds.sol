//SPDX-Licenses-Identifier:MIT

pragma solidity ^0.8.0;

contract SendFunds{

  function sendViaCall(address payable _to) public payable {
  
        // Call returns a boolean value indicating success or failure.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
