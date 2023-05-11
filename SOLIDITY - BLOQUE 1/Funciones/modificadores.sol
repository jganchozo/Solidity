//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract view_pure_payable {

    //Modificador view
    string[] list_alumnos;

    function nuevo_alumno(string memory _alumno) public {
        list_alumnos.push(_alumno);
    }

    function ver_alumno(uint _index) public view returns(string memory){

        return list_alumnos[_index];
    }

    uint x = 10;

    function sumarAx(uint _a) public view returns(uint) {

        return x + _a;
    }

    //Modificador pure
    function exponenciacion(uint _a, uint _b) public pure returns(uint){

        return _a ** _b;
    }

    //Modificador payable

    mapping(address => cartera) Saldo;

    struct cartera {
        string nombre;
        address direccion;
        uint dinero;
    }

    function pagar(string memory _nombrePersona, uint _cantidad) public payable {

        cartera memory mi_cartera;
        mi_cartera = cartera(_nombrePersona, msg.sender, _cantidad);
        Saldo[msg.sender] = mi_cartera;
    }   

    function agregar_saldo(string memory _nombrePersona, uint _cantidad) public payable {

        cartera memory mi_cartera;
        mi_cartera = cartera(_nombrePersona, msg.sender, _cantidad);
        Saldo[msg.sender] = mi_cartera;
    }   

    function ver_saldo() public view returns(cartera memory){

        return Saldo[msg.sender];
    }

}