//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract bucle_while {

    //Suma los numeros impares menores o iguales a 100
    function suma_impares() public pure returns(uint){

        uint suma = 0;
        uint contador = 1;

        while(contador <= 100){

            if(contador % 2 != 0){
                suma += contador;
            }

            contador++;
        }

        return suma;
    }

    //Esperar 5 segundos

    uint tiempo;

    function fijarTiempo() public {
        tiempo = now;
    }

    function espera() public view returns(bool){
        
        while(now < tiempo + 5 seconds) {
            return false;
        }

        return true;
    }

    //Siguiente numero primo
    //Numero primo es aquel que es divisible entre uno y el mismo
    function siguientePrimo(uint _p) public pure returns(uint){

        uint contador = _p + 1;

        while(true){

            //Comprobamos si contador es primo
            uint aux = 2;
            bool primo = true;

            while(aux < contador){

                if(contador % aux == 0){
                    primo = false;
                    break;
                }

                aux++;
            }

            if(primo == true){
                break;
            }

            contador++;
        }

        return contador;
    }
}