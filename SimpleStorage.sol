// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 favouriteNumber;

    mapping(string => uint256) public nameToFavouriteNumber;

    People public person = People({favouriteNumber: 2, name: "Billu"});

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // People memory newPerson = People({favouriteNumber: _favouriteNumber, name: _name});
        // people.push(newPerson);
        people.push(People(_favouriteNumber + 2, _name));

        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    // view, pure functions
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
}
