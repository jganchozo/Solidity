//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract ValoresRetorno {

    //Funcion que nos devuelva un saludo
    function saludos() public returns(string memory){

        return "Hola Jose Manuel";
    }

    //Funcion calcular el resultado de una multiplicacion
    function multiplicacion(uint _a, uint _b) public returns(uint){

        return _a * _b;
    }

    //Devuelve true si el numero es par y false si es impar
    function par_impar(uint _number) public returns(bool){

       return ((_number % 2) == 0);
    }

    //Realizamos una funcion que nos devuelve el cociente y el residuo de una division
    //ademas de una variable booleana si el residuo es par
    function division(uint _a, uint _b) public returns(uint, uint, bool){

        uint q = _a / _b;
        uint r = _a % _b;
        bool multiplo = (r == 0);

        return (q, r, multiplo);
    }


    //Practica para el manejo de valores devueltos
    function numeros() public returns(uint, uint, uint, uint, uint, uint){

        return (1, 2, 3, 4, 5, 6);
    }

    //Asignacion multiple
    function todos_los_valores() public{
        
        //Declramos las variables donde se guardan los valores de retorno de la funcion numeros
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;

        //realizar la asignacion multiple
        (a, b, c, d, e, f ) = numeros();
    }

    function ultimo_valor() public returns(uint){
        
        (,,,,, uint ultimo) = numeros();
        
        return ultimo;
    }
}