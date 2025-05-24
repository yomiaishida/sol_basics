// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // variable to store the data
    uint256  myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeole;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

    function retrieve() public view returns (uint256) {
       return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint _favoriteNumber) public  {
        listOfPeole.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


     function listOfPeoplesSize() public view returns (uint){
        return listOfPeole.length;
    }

}