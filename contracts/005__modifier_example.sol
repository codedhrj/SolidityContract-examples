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
        As this function is public, anyone can call this function but our modifier "onlyOwner" will run first.
        During compile time, Solidity will modify the content of the current function: first it will put all the code
        of the modifier, then it will replace "_;" with the code of the current function.
        After compilation, the code of this function will look like:
            require(msg.sender == manager);
            message = newMessage;

        Benefit of using modifier is some common code to be used for multiple functions can be added only once and that
        will run before the execution of actual function commands
    */
    function setMessage(string newMessage) public onlyOwner {
        message = newMessage;
    }

    /*
        This is a basic modifier with name onlyOwner.
        "_;" is replaced by the actual contents of the function with which it is used. Check above function for example.
    */
    modifier onlyOwner() {
        require(msg.sender == manager);
        _;
    }
}
