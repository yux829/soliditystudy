// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {
 event ValueChanged(address indexed author, string oldValue, string newValue);

    string _value;


    function getValue() view public returns (string memory) {
        return _value;
    }

    function setValue(string memory value) public {
        emit ValueChanged(msg.sender, _value, value);
        _value = value;
    }
}