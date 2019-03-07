pragma solidity ^0.5.0;

contract UserManagement2 {

    struct User {
        uint id;
        string name;
    }

    User[] public users;
    uint public nextId = 1;

    function create(string memory name) public {
        users.push(User(nextId, name));
        nextId++;
    }

    function read_user(uint id) public view returns(uint, string memory) {
        uint i = find_user(id);
        return(users[i].id, users[i].name);
    }

    function update_user(uint id, string memory name) public {
        uint i = find_user(id);
        users[i].name = name;
    }

    function delete_user(uint id) public {
        //uint i = find_user(id);
        delete users[id];
    }

    function find_user(uint id) internal view returns(uint) {
        for(uint i = 0; i < users.length; i++) {
            if(users[i].id == id) {
                return i;
            }
        }
        revert("User does not exist");
    }

}