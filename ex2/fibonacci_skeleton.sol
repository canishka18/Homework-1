pragma solidity ^0.4.16;


contract Fibonacci {

	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
        if(position == 0) {
            return 0;
        } if (position == 1 || position == 2) {
            return 1;
        }
        uint a = 1;
        uint b = 1;
        uint c;
        for(uint i = 0; i < position - 2; i++){
            c = a + b;
            a = b;
            b = c;
        }
        return b;
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function(){}

}
