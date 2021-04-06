// ERC20: fungible- meaning they can be exchanged for another one of the same value (not the object that you are purchasing with it)
contract ERC20 {
    // send money directly
    function transfer(address _to, uint256 _amount) returns (bool success);

    // third party- like Coinbase managing the payment
    function transferFrom(address _from, address _to, uint256 _amount) returns (bool success);

    // check balance of wallet
    function balanceOf(address _owner) constant returns (uint256 balance);

    // approve of the transaction
    function approve(address _spender, uint256 _amount) returns (bool success);

    // check if you have enough money to call transact() 
    function allowance(address _owner, address _spender) constant returns (uint256 rmaining);

    // total supply of tokens
    function totalSupply() constant returns (uint);
}


// ERC721: non fungible (NFT)
contract ERC721 {
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _tokenId
    );

    event Approval(
        address indexed _owner,
        address indexed _approved,
        uint256 _tokenId
    );

    function balanceOf(address _owner)
        public view returns (uint256 _balance);

    function ownerOf(uint256 _tokenId) 
        public view returns (address _owner);

    function transfer(address _to, uint256 _tokenId) public;

    function approve(address _to, uint256 _tokenId) public;

    function takeOwnership(uint256 _toeknId) public;
}

// ERC115

// ERC 223
contract ERC223 {
    event Transfer(
        address indexed from,
        address indexed to,
        uint value,
        bytes indexed data
    );

    function totalSupply() public view returns (uint256);

    function balanceOf(address _owner) public view returns(uint256);

    function transfer(address _to, uint256 _value)
        public returns (bool);

    function transfer(address to, uint value, bytes data)
        public returns (bool);
}

contract ERC223ReceivingContract {
    function tokenFallback(
        address _from,
        uint _value,
        bytes _data
    ) public;
}

// ERC 827
contract ERC827 {
    function approve(
        address _spender,
        uint256 _value,
        bytes _data
    ) public returns (bool);

    function transfer(
        address _to,
        uint256 _value,
        bytes _data
    ) public returns (bool);

    function transferFrom(
        address _from,
        address _to,
        uint256 _value,
        bytes _data
    ) public returns (bool);
}