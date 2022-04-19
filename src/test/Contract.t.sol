// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../Contract.sol";

interface Vm {
    function prank(address) external;
    function assume(bool) external;
}

contract ContractTest is DSTest {
    Vm vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);
    MyToken token;
    address sender = address(1);
    address recipient = address(2);
    function setUp() public {
        token = new MyToken();
    }

    function test(uint256 amount) public {
        vm.assume(amount < 100e18);
        uint256 from_balance = token.balanceOf(sender);
        uint256 recipient_balance = token.balanceOf(recipient);
        vm.prank(sender);
        token.transfer(recipient, amount);
        assertEq(token.balanceOf(sender), from_balance - amount);
        assertEq(token.balanceOf(recipient), recipient_balance + amount);
    }
    
}
