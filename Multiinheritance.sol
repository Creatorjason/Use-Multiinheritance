//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract A {
     function head() public virtual pure returns(string memory){
        return "A";
    }
    function chest() public virtual pure returns(string memory){
        return "A";
    }
    function heart() public virtual pure returns(string memory){
        return "A";
    }
    function heartya() public virtual pure returns(string memory){
        return "A";
    }
}
contract B  is A{
     function head() public virtual override pure returns(string memory){
        return "B";
    }
    function chest() public virtual override pure returns(string memory){
        return "B";
    }
    function heart() public  virtual override pure returns(string memory){
        return "B";
    }
    function heartyb() public virtual pure returns(string memory){
        return "B";
    }
}
contract C is B{
     function head() public  virtual override pure returns(string memory){
        return "C";
    }
    function chest() public  virtual override pure returns(string memory){
        return "C";
    }
    function heart() public virtual override pure returns(string memory){
        return "C";
    }
    function heartyc() public virtual pure returns(string memory){
        return "C";
    }
}
contract D is C{
     function head() public  virtual override pure returns(string memory){
        return "D";
    }
    function chest() public  virtual override pure returns(string memory){
        return "D";
    }
    function heart() public virtual override pure returns(string memory){
        return "D";
    }
    function hearty() public virtual pure returns(string memory){
        return "D";
    }

}
contract E is A,B,C,D{
     function head() public  override(A,B,C,D) pure returns(string memory){
        return "E";
    }
    function chest() public  override(A,B,C,D) pure returns(string memory){
        return "E";
    }
    function heart() public pure override(A,B,C,D) returns(string memory){
        return "E";
    }
}
