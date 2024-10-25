// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract AdministrarUsuarios{
    //Admin
    //address owner = msg.sender
    struct Usuario{
     uint edad;
     string nombre;
     string genero;
    }
    mapping(address => Usuario) private listaUsuarios;
//escribir cosas en la blockchain storage
    function registrar(uint edad, string memory genero, string memory nombre) public {
        //crea objeto 
        Usuario storage _usuario = listaUsuarios[msg.sender];
        _usuario.edad = edad;
        _usuario.nombre = nombre;
        _usuario.genero = genero;
    }

    function consultar() public view  returns(Usuario memory){
        return listaUsuarios[msg.sender];

    }

    function borrar() public{
        delete listaUsuarios[msg.sender];
    }
}
