// 0.4.7 is the version of solidity we are using, this version number helps the Solidity Compiler to compile correctly
pragma solidity ^0.4.7;

// PublicInbox is the name of the contract
contract PublicInbox {
    /*
        string - signifies that the value to be stored in the variable will be string
        public - signifies that anyone in the world can read/write this variable
        message - name of the variable

        Note: As our variable is public, therefore there is no need to add getMessage() function,
        Solidity Compiler adds that automatically.
    */
    string public message;

    /*
        Constructor - It runs only once, when the contract is deployed on Ethereum Network.
        It also assigns the initial value to our "message" variable.
    */
    function PublicInbox(string initialMessage) {
        message = initialMessage;
    }

    /*
        As this function is public, anyone can call this function and set a new value to the "message" variable.
    */
    function setMessage(string newMessage) public {
        message = newMessage;
    }
}
