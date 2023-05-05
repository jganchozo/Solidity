//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
// SPDX-License-Identifier: MIT

contract Estructuras {

    //Cliente de una pagina web de pago
    struct cliente {
        uint id;
        string name;
        string dni;
        string mail;
        uint phone_number;
        uint credit_number;
        uint secret_number;
    }

    //Declaramos variable de tipo cliente
    cliente cliente_1;
    cliente cliente_2 = cliente(1, "Jose Manuel", "123456789", "jganchozo@outlook.com", 123456789, 9876543210, 559);

    //Amazon (cualquier paginba de compra venta de productos)
    struct producto {
        string name;
        uint price;
    }

    //Declaramos una variable de tipo producto
    producto telefono = producto("Iphone 13", 900);

    //Proyecto cooperativo de ONGs para ayudar a diversas causas
    struct ONG {
        address ong;
        string name;
    }

    //Declaramos una variable de tipo ONG
    ONG caritas = ONG(0x617F2E2fD72FD9D5503197092aC168c91465E7f2, "Caritas");

    struct Causa {
        uint id;
        string name;
        uint amount;
    }

    //Declaramos una variable de tipo Causa
    Causa medicamentos = Causa(1, "Medicamentos", 9000);

}