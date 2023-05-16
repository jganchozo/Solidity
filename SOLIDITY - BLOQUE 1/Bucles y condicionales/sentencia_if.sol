//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract sentencia_if {

    //winning number
    function probarSuerte(uint _number) public pure returns(bool){

        return (_number == 100);
    }

    //Calculamos el valor absoluto de un numero
    function valorAbsoluto(int _number) public pure returns(uint){
        
        uint valor_absoluto;

        if(_number < 0){
            valor_absoluto = uint(-_number);
        } else{
            valor_absoluto = uint(_number);
        }

        return valor_absoluto;
    }

    //Devolver true si el numero introducido es par y tiene 3 cifras
    function parTresCifras(uint _number) public pure returns(bool){

        return ((_number % 2 == 0) && (_number >= 100) && (_number <= 999));
    }

    //Votacion
    //Solo hay tres candidatos: Jose, Jorge y Maria
    function votar(string memory _candidato) public pure returns(string memory){

        string memory mensaje;

        if(keccak256(abi.encodePacked(_candidato)) == keccak256(abi.encodePacked("Jose"))){
            mensaje = "Has votado correctamente a Jose";
        }else if(keccak256(abi.encodePacked(_candidato)) == keccak256(abi.encodePacked("Jorge"))){
            mensaje = "Has votado correctamente a Jorge";
        }else if(keccak256(abi.encodePacked(_candidato)) == keccak256(abi.encodePacked("Maria"))){
            mensaje = "Has votado correctamente a Maria";
        }else{
            mensaje = "Has votado a un candidato que no esta en la lista";
        }

        return mensaje;
    }
    

}