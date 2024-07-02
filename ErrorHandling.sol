// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyContract {
    string public message = "default";

    function testRequire(uint _i) public {
        require(_i > 10, "Input must be greater than 10");
        message = "Require is working";
    }

    function testRevert(uint _i) public {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
        message = "Revert is working";
    }

    function testAssert(uint _i) public {
        assert(_i == 0);
        message = "Assert is working";
    }

    function resetMessage() public {
        message = "default";
    }
}
