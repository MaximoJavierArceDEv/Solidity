// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract HolaMundo{
    string private usuario;
//Funciona como Setter solamente
    function agregarUsuarioSaludar(string memory _usuario) public{
        usuario = _usuario; //Asginar Usuario

    }
//Retorna y modifica
    function SaludarSoldity() public view returns (string memory) {
        string memory saludo1 ="Hola ";
        string memory saludo2 = " Bienvenido al curso de solidity con ejemplos";
        string memory saludo = string(abi.encodePacked(saludo1,usuario,saludo2));
        return saludo; 
    }
}
