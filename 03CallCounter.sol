pragma solidity >=0.7.0 <0.9.0;

interface Counter {
     function inc(uint num) external returns(uint);
}

contract CallCounter  {
    uint public count=20;
    function callByAddr(address addr) public returns(uint) {
        count= Counter(addr).inc(2);
        return count;
    } 
    
}