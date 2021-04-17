pragma solidity >=0.4.24;

contract ERC20Interface {

    string public constant name = "Token example";
    string public constant symbol = "UDC";
    uint8 public constant decimals = 18;

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);

    function totalSupply() public constant returns (uint);
    function balanceOf(address tokenOwner) public constant returns (uint balance);
    function transfer(address to, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success); // third party 
    function approve(address spender, uint tokens) public returns (bool success);
    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);

}

// yes, that is it. those are the only functions that you need to move money