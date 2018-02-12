// 0.4.7 is the version of solidity we are using, this version number helps the Solidity Compiler to compile correctly
pragma solidity ^0.4.7;

/*
    001_PublicInbox is the contract name. It could have been PublicInbox also,
    but I intentionally appended 001_ to keep all the contracts sorted by filename.
    So that everyone is able to find the next contract to learn easily.
*/

// Note: If you are running this contract - Change the contract name and constructor name from 001__PublicInbox to PublicInbox
contract 001__PublicInbox {

    /*
        string - signifies that the value to be stored in the variable will be public
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
    function 001__PublicInbox(string initialMessage) {
        message = initialMessage;
    }

    /*
        As this function is public, anyone can call this function and set a new value to the "message" variable.
    */
    function setMessage(string newMessage) public {
        message = newMessage;
    }
}
