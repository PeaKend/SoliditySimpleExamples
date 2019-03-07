pragma solidity ^0.5.0;

contract UserManagement {

    struct User {
        uint id;
        string name;
    }

    User[] public users;
    uint public nextId;

    function create_user(string memory name) public {
        users.push(User(nextId, name));
        nextId++;
    }

    function read_user(uint id) public view returns(uint, string memory) {
        for(uint i = 0; i < users.length; i++) {
            if(users[i].id == id) {
                return(users[i].id, users[i].name);
            }
        }
    }

    function update_user(uint id, string memory name) public {
        for(uint i = 0; i < users.length; i++) {
            if(users[i].id == id) {
                users[id].name = name;
            }
        }
    }

    function delete_user(uint id) public {
        delete users[id];
    }

}