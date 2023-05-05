//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
// SPDX-License-Identifier: MIT

contract Arrays {

    //Array de enteros de longitud fija de 9
    uint[9] public array_enteros = [1, 2, 3, 4 , 5];

    //Array de strings de longitud fija 15
    string[15] array_strings;

    //Array de enteros de 32 bits de longitud fija 7
    uint32[7] array_enteros_32_bits;

    //Array dinamico de enteros
    uint[] public array_dinamico_enteros;

    struct Persona {
        string nombre;
        uint edad;
    }

    //Array dinamico de tipo Persona
    Persona[] public personas;

    uint test = array_enteros[2];

    function modificar_array() public {

        //array_dinamico_enteros.push(_numero);
        //personas.push(Persona(_nombre, _edad));
        array_enteros[0] = 900;
    }

    uint public index = array_enteros[2];

    // function obtener_valor(uint _index) public view returns(){

    // }

}

