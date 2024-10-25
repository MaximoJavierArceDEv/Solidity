// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract CalculadoraBasica {
    //Pure es similar  a view, mientras que vos operes con tus propias variables y no las del sistema usas pure
    function suma(uint a, uint b) public pure returns (uint){
        return a + b;
    }
    function resta(uint a, uint b) public pure returns (uint){
        return a - b;
    }
    function multiplica(uint a, uint b) public pure returns (uint){
        return a * b;
    }
    function divide(uint a, uint b) public pure returns (uint){
        return a / b;
    }

    
}
