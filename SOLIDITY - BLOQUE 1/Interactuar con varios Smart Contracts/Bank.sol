// SPDX-License-Identifier: MIT
//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Bank {

    //Definimos un tipo de datos complejo
    struct Client {
        string name;
        address client_address;
        uint balance;
    }

    //mapping relacion nombre del cliente con el tipo complejo cliente
    mapping(string => Client) Clients;

    //Funcion que nos permita dar de alta un nuevo cliente
    function newClient(string memory _name) public {

        Clients[_name] = Client(_name, msg.sender, 0);
    }

}

contract BankTwo {

}

contract BankThree {
    
}