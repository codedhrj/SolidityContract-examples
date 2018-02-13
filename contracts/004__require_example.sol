// 0.4.7 is the version of solidity we are using, this version number helps the Solidity Compiler to compile correctly
pragma solidity ^0.4.7;

// MessageBoard is the name of the contract
contract MessageBoard {

    /*
        string - signifies that the value to be stored in the variable will be string
        public - signifies that anyone in the world can read/write this variable
        message - name of the variable
    */
    string public message;

    /*
        address - signifies that the addresses like "0x123asdfl123lj123asdf123" can be stored. It's better to use
                  address instead of strings for ethereum addresses because we can run some functions like 'transfer'
                  directly on them.
        public - signifies that anyone in the world can read/write this variable
        manager - name of the variable
    */
    address public manager;

    /*
        Constructor - It runs only once, when the contract is deployed on Ethereum Network.
        It also assigns the initial value to our "owner" variable.
    */
    function MessageBoard(string initialMessage) {
        manager = msg.sender;
        message = initialMessage;
    }

    /*
        As this function is public, anyone can call this function but our 'require' statement check will make sure that
        only if the caller of the function is our manager.
        If expression inside 'require' brackets evalues to 'true', next line gets executed otherwise it throws an error
        and the processing stops.
    */
    function setMessage(string newMessage) public {
        require(msg.sender == manager);
        message = newMessage;
    }
}
