//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract funciones {

    //Add dentro de un array de direcciones, la direccion de la persona que ejecute la funcion
    address[] public direcciones;

    function nuevaDireccion() public {
        direcciones.push(msg.sender);
    }

    //Computar el hash de los datos proporcionados comop parametro
    bytes32 public hash;

    function hashData(string memory _datos) public {
        hash = keccak256(abi.encodePacked(_datos));
    }

    //Declaramos un tipo de dato complejo que es commida
    struct comida {
        string nombre;
        string ingredientes;
    }

    //Vamos a crear un tipo de dato complejo comida
    comida public hamburguesa;

    function Hamburguesas(string memory _ingredientes) public {
        hamburguesa = comida("Hamburguesa", _ingredientes);
    }

    //Declaramos un tipo de dato complejo alumno
    struct alumno {
        string nombre;
        address direccion;
        uint edad;
    }

    bytes32 public hash_alumno;

    //Calcular el hash del alumno mediante la funcion privada
    function hashIdAlumno(string memory _nombre, address _direccion, uint _edad) private {
        hash_alumno =  keccak256(abi.encodePacked(_nombre, _direccion, _edad));
    }

    //Guardamos con la funcion publics dentro de una lista los alumnos
    alumno[] public lista;
    mapping(string => bytes32) alumnos;

    function nuevoAlumno(string memory _nombre, uint _edad) public {
        lista.push(alumno(_nombre, msg.sender, _edad));
        hashIdAlumno(_nombre, msg.sender, _edad);
        alumnos[_nombre] = hash_alumno;
    }

}