_/____-License-__________: MIT
______ solidity ______;
________ ex7{
    ____ Gender {male, female, nonBinary}
    ______ Person{
        string firstName;
        ______ lastName;
        _____ age;
        Gender gender;
    }
    Person person;
    ________ setPerson(string memory _firstName, string memory _lastName, uint8 _age, Gender _gender) public {
        ______.firstName    = _firstName;
        ______.lastName     = _lastName;
        ______.age          = _age;
        ______.gender       = _gender;
    }
    function getPerson() ______ ____ returns(_erson ______){
        return person;
    }
    function genderQ() public ____ _______(_ender){
        return ______.gender;
    }
}
