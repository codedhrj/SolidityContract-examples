// 0.4.7 is the version of solidity we are using, this version number helps the Solidity Compiler to compile correctly
pragma solidity ^0.4.7;

// ArrayExample is the name of the contract
contract ArrayExample {

    /*
        address - signifies that the addresses like "0x123asdfl123lj123asdf123" can be stored. It's better to use
                  address instead of strings for ethereum addresses because we can run some functions like 'transfer'
                  directly on them.
        public - signifies that anyone in the world can read/write this variable
        message - name of the variable
    */
    address[] public players;

    address public manager;

    /*
        Constructor - It runs only once, when the contract is deployed on Ethereum Network.
        It also assigns the initial value to our "owner" variable.
    */
    function ArrayExample() {
        manager = msg.sender;
    }

    /*
        This function can be called by anyone and the caller's address gets added to the players array
    */
    function enter() public {
        players.push(msg.sender);
    }

    /*
        As our "players" is a public variable, we will get a default method "players", but if you deploy the contract
        you will see that at one time, you can pass only one argument i.e, index and get back only address.
        That's why we are exposing this function to get all the addresses.
    */
    function getAllPlayers() public view returns (address[]) {
        return players;
    }
}
