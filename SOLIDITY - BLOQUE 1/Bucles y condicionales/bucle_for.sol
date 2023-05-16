//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract bucle_for{

    //Suma de los primeros 100 numeros a partir del numero introducido
    function suma(uint _numero) public pure returns(uint){

        uint value = 0;

        for(uint i = _numero; i < (_numero + 100); i++){
            value += i; 
        }

        return value;
    }

    //Esto es un array dinamico de direcciones
    address[] direcciones;

    //Anade una direccion al array
    function asociar() public{
        direcciones.push(msg.sender);
    }

    //Comprobar si la direccion esta en el array de direcciones
    function comprobarAsociacion() public view returns(bool, address){

        for(uint i = 0; i < direcciones.length; i++){

            if(direcciones[i] == msg.sender){
                return (true, direcciones[i]);
            }
        }
    }

    //Doble for: Sumar los 10 primeros factoriales
    function sumaFactorial() public pure returns(uint){

        uint result = 0;

        for(uint i = 1; i <= 10; i++){

            uint factorial = 1;

            for(uint j = 2; j <= i; j++){
                factorial = factorial * j;
            }

            result += factorial;
        }

        return result;
    }

}