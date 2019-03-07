pragma solidity ^0.5.0; 

contract MultipleValueStorage {
    uint[] public ids;

    function add (uint id) public {
        ids.push(id);
    }

    function get (uint position) public view returns(uint) {
        return ids[position];
    }

    function getAll() public view returns(uint[] memory) {
        return ids;
    }

    function length() public view returns(uint) {
        return ids.length;
    }
}
