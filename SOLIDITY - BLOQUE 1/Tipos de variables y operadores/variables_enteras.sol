//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
// SPDX-License-Identifier: MIT


contract enteros {

    //Variables enteras sin signo
    uint mi_primer_entero;
    uint mi_primer_entero_inicializado = 9;
    uint cota = 5000;
    
    //Variables enteras sin signo con un numero especifico de bits
    uint8 entero_8_bits;
    uint64 entero_64_bits = 9000;
    uint16 entero_16_bits;
    uint256 entero_256_bits;

    //Variables enteras con signo
    int entero_con_signo;
    int entero_con_signo_inicializado = 9;
    int mi_numero_2 = -9;

    //Variables enteras con signo con un numero especifico de bits
    int72 enterocon_signo_72_bits;
    int240 enterocon_signo_240_bits = 90000;
    int256 enterocon_signo_256_bits;
}