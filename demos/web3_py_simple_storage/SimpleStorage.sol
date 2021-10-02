//SPDX-License_Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 public num = 5;
    bool faoriteBool = false;
    string favoriteString = "String";
    int256 favoriteInt = -5;
    address favouriteAddress = 0x520056C3bbd0cF2ABe9f3F5fa014478d4191b1D2;
    bytes32 favoriteBytes = "cat";

    struct People {
        uint256 num;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameToNum;

    function addPerson(string memory _name, uint256 _num) public {
        people.push(People(_num, _name));
        nameToNum[_name] = _num;
    }

    function store(uint256 _num) public {
        num = _num;
    }

    function retrieve() public view returns (uint256) {
        return num;
    }
}
