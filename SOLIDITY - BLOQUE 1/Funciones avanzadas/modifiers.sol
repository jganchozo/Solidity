// SPDX-License-Identifier: MIT
//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Modifiers {

    //Ejemplo de propietario del contrato puede ejecutar una funcion
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier soloPropietario() {

        require(msg.sender == owner, "No tienes permiso para ejecutar la funcion");
        _;
    }

    function ejemplo() public soloPropietario() {

        //Codigo de la funcion para el propietario del contrato
    }

    struct Cliente {
        address direccion;
        string nombre;
    }

    mapping(string => address) clientes;

    function altaCliente(string memory _nombre) public {

        clientes[_nombre] = msg.sender;
    }

    modifier soloClientes(string memory _nombre) {
        
        require(clientes[_nombre] == msg.sender);
        _;
    }

    function ejemploTwo(string memory _nombre) public soloClientes(_nombre) {

        //Logica de la funcion para los clientes
    }

    //Ejemplo de conduccion
    modifier mayorEdad(uint _edadMinima, uint _edadUsuario){
        require(_edadUsuario >= _edadMinima);
        _;
    }

    function conducir(uint _edad) public mayorEdad(18, _edad) {

        //Codigo a ejecutar para los conductores mayores de edad

    }
}