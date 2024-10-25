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
    function registrar(uint edad, string memory genero, string memory nombre, address usuario) public {
        //crea objeto 
        Usuario storage _usuario = listaUsuarios[usuario];
        _usuario.edad = edad;
        _usuario.nombre = nombre;
        _usuario.genero = genero;
    }

    function consultar(address usuario) public view  returns(Usuario memory){
        return listaUsuarios[usuario];

    }

    function borrar(address usuario) public{
        delete listaUsuarios[usuario];
    }
}
