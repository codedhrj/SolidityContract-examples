// 0.4.7 is the version of solidity we are using, this version number helps the Solidity Compiler to compile correctly
pragma solidity ^0.4.7;

// AddressExample is the name of the contract
contract AddressExample {

    /*
        address - signifies that the addresses like "0x123asdfl123lj123asdf123" can be stored. It's better to use
                  address instead of strings for ethereum addresses because we can run some functions like 'transfer'
                  directly on them
        public - signifies that anyone in the world can read/write this variable
        owner - name of the variable

        Note: As our variable is public, therefore there is no need to add getOwner() function,
        Solidity Compiler adds that automatically.
    */
    address public owner;

    /*
        Constructor - It runs only once, when the contract is deployed on Ethereum Network.
        It also assigns the initial value to our "owner" variable.
    */
    function AddressExample() {
        /*
            msg is a global variable provided by Ethereum VM. It's available in every function call not just constructor,
            msg.sender contains the address of the account from which the function call is made.
            In case of constructor, it contains the address of the account which deployed the contract.
        */
        owner = msg.sender;
    }
}
