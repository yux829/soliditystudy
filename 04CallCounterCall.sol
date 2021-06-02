pragma solidity >=0.4.0 <0.9.0;

contract CallCounterCall  {
    uint public count=20;
    function delegatecallByAddr(address addr) public returns(bool) {
        bytes4 methodId=bytes4(keccak256("inc(uint256)"));
        return addr.delegatecall(methodId,2);
    } 
    
        function callByAddr(address addr) public returns(bool) {
        bytes4 methodId=bytes4(keccak256("inc(uint256)"));
        return addr.call(methodId,2);
    } 
    
    
}