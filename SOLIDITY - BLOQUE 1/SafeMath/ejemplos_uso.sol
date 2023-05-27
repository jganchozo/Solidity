// SPDX-License-Identifier: MIT
//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
import "./SafeMath.sol";

contract calculosSeguros {

    //Debemos declarar para que datos usaremos la libreria
    using SafeMath for uint;

    //Funcion suma segura
    function suma(uint _a, uint _b) public pure returns(uint) {
        return _a.add(_b);
    }

    //Funcion resta
    function resta(uint _a, uint _b) public pure returns(uint) {
        return _a.sub(_b);
    }

    //Funcion multiplicacion
    function multiplicacion(uint _a, uint _b) public pure returns(uint) {
        return _a.mul(_b);
    }

}