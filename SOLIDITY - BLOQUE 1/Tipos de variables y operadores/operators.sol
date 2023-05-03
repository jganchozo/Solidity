//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract Operators {

    //Mathematical operators
    uint a = 32;
    uint b = 4;

    uint public suma = a+b;
    uint public resta = a-b;
    uint public division = a/b;
    uint public multiplicacion = a*b;
    uint public residuo = a%b;
    uint public exponenciacion = a**b;

    //Comparar enteros
    uint c = 3;
    uint d = 3;
    bool public test_1 = a>b;
    bool public test_2 = a<b;
    bool public test_3 = c==d;
    bool public test_4 = a==d;
    bool public test_5 = a!=b;
    bool public test_6 = a>=b;

    //Operadores booleanos

    //Criterio de divisibilidad entre : si el numero termina en 0 o en 5
    function divisibilidad(uint _k) public pure returns(bool) {

        uint ultima_cifra = _k%10;
        return ((ultima_cifra == 0) || (ultima_cifra == 5));

    }

    function divisibilidadV2(uint _k) public pure returns(bool) {

        uint ultima_cifra = _k%10;
        return !((ultima_cifra != 0) && (ultima_cifra != 5));

    }

}