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

contract Client is Bank {

    function CreateAccountCliente(string memory _name) public {

        newClient(_name);
    }

    function AddAmount(string memory _name, uint _amount) public {

        Clients[_name].balance += _amount;
    }

    function WithdrawAmount(string memory _name, uint _amount) public returns(bool) {

        bool flag = ((int(Clients[_name].balance) - int(_amount)) >= 0);

        if(flag){
            Clients[_name].balance -= _amount;
        }

        return flag;
    }

    function getBalance(string memory _name) public view returns(uint) {

        return Clients[_name].balance;
    }
}