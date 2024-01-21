// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonalInfo{

    // State variables
    string private name;
    uint48 private cnic;
    string private passportNum;
    uint8 private age;
    string private birthDate;

    // Getter functions
    function getName() public view returns (string memory) {
        return name;
    } 
    function getCNIC() public view returns (uint48) {
        return cnic;
    }
    function getPassportNum() public view returns (string memory) {
        return passportNum;
    }
    function getAge() public view returns (uint8) {
        return age;
    }
    function getBirthDate() public view returns (string memory) {
        return birthDate;
    }

    // Setter functions
    function setName(string memory _name) public {
        name = _name;
    } 
    function setCNIC(uint48 _cnic) public {
        cnic = _cnic;
    }
    function setPassportNum(string memory _passportNum) public {
        passportNum = _passportNum;
    }
    function setAge(uint8 _age) public {
        age = _age;
    }
    function setBirthDate(string memory _birthDate) public {
        birthDate = _birthDate;
    }

    // Payable function
    function sendEther(address payable _to) public payable {
        _to.transfer(1 wei);
    }
}
