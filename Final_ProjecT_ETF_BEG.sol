// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

//it is going to be our main contract to make and update token details
contract Token_Holder{

    //we are going to create a structure , rather 3 different variables for Token name, Token abbr., and Total supply
    struct Token {
        string name;
        string abbr;
        uint tSupply;
    }

    //here is the address to balance mapping 
    mapping(address => uint) public balance;

//The second part of the code will start from here , where we going to put some value

    Token f;
    //function to put name and the abbreviation of the token
    function putDetails(string memory _name, string memory _abbr) public{
        f.name = _name;
        f.abbr = _abbr;
    }

    //finally the mint function that was asked by the question
    function mint(address _addr, uint bal) public {
        balance[_addr] += bal;
        f.tSupply += bal; 
    }

    //lastly the burn function 
    function burnIt(address _add, uint burn) public returns (string memory){
        if(balance[_add] >=burn){
            balance[_add] -= burn;
            return "Update Successful";
        }
        else {
            return "Not Enough Balance";
        }
    }

    //To show the details of the token
    function toShow() view public returns(string memory Name_is, string memory Abbreviation_is, uint Total_Supply_is){
        Name_is=f.name;
        Abbreviation_is = f.abbr;
        Total_Supply_is = f.tSupply;
    }

    //Another add-up functions to update other details of the tokens 
    function infoUpdate(string memory Mdata, string memory new_value) public returns(string memory){
        if(keccak256(abi.encodePacked(Mdata)) == keccak256(abi.encodePacked("Name")) || keccak256(abi.encodePacked(Mdata)) == keccak256(abi.encodePacked("name"))){
            f.name=new_value;
            return "Update Successful";
        }
        else if(keccak256(abi.encodePacked(Mdata)) == keccak256(abi.encodePacked("Abbr")) || keccak256(abi.encodePacked(Mdata)) == keccak256(abi.encodePacked("abbr"))){
            f.abbr=new_value;
            return "Update Successful";
        }
        else{
            return "Invalid Request !";
        }
        
    }

}
// I wanted to add the array aswell to hold all the Tokens at one place for an account and then it will update the value by looping on all 
//the indexes but it shown the error of exceeding the gas limit , that's why I simply dumped that Idea
