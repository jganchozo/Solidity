//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT


contract Eventos {

    //Declaramos los eventos
    event nombre_evento_one(string _nombrePersona);
    event nombre_evento_two(string _nombrePersona, uint _edad);
    event nombre_evento_three(string, uint, address, bytes32);
    event abortarmision();
    
    function EmitirEvento(string memory _nombrePersona) public{

        emit nombre_evento_one(_nombrePersona);
    }

    function EmitirEventoTwo(string memory _nombre, uint _edad) public {
        emit nombre_evento_two(_nombre, _edad);
    }

    function EmitirEventoThree(string memory _nombre, uint _edad) public {

        bytes32 hash_id = keccak256(abi.encodePacked(_nombre, _edad, msg.sender));
        emit nombre_evento_three(_nombre, _edad, msg.sender, hash_id);
    }

    function AbortarMision() public {
        emit abortarmision();
    }
}