//Indicamos el o rango de versiones del compilador

/*
pragma solidity ^0.4.0;
pragma solidity >=0.4.4 <0.7.0;
*/

pragma solidity >=0.4.4 <0.7.0;

//Importar el archivo ERC20.sol que esta en nuestro directorio de trabajo
import "./ERC20.sol";

//Nuestro primer contrato
contract FirstContract {

    //En esta variable se encuentra la direccion de la persona que despliega el contrato
    address owner;
    ERC20Basic token;

    /*
    Guardamos en la variable owner la direccion de la persona que despliega el contrato
    Inicializamos el numero de tokens
    */
    constructor() public {
        owner = msg.sender;
        token = new ERC20Basic(1000);
    }
}
