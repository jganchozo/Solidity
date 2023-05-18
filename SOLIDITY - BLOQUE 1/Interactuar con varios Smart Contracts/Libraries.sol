// SPDX-License-Identifier: MIT
//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

library Operations {

    function division(uint _i, uint _j) public pure returns(uint){

        require(_j > 0, "No podemos dividir entre 0");

        return _i / _j;
    }

    function multiplicacion(uint _i, uint _j) public pure returns(uint) {

        if((_i == 0) || (_j == 0)){
            return 0;
        } else {
            return _i * _j;
        }
    }
}

contract Calculos {

    using Operations for uint;

    function calculos(uint _a, uint _b) public pure returns(uint, uint) {

        uint q = _a.division(_b);
        uint m = _a.multiplicacion(_b);

        return (q, m);
    }

}