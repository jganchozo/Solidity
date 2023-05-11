//Indicamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: MIT

contract causasBeneficas {

    //Declaraciones necesarias
    struct Causa {
        uint Id;
        string nombre;
        uint precio_objetivo;
        uint cantidad_recaudada;
    }

    uint contador_causas = 0;
    mapping(string => Causa) causas;
    
    //Permite dar de alta una nueva causa
    function nuevaCausa(string memory _nombre, uint _precio_bjetivo) public payable {

        contador_causas += 1;
        //Causa memory causa = Causa(contador_causas, _nombre, _precio_bjetivo, 0);
        causas[_nombre] = Causa(contador_causas, _nombre, _precio_bjetivo, 0);
    }

    //Esta funcion nos devuelve true en caso de poder donar a una causa
    function objetivoCumplido(string memory _nombre, uint _cantidad) private view returns(bool){
        
        bool flag = false;
        Causa memory causa = causas[_nombre];
        flag = (causa.precio_objetivo >= (causa.cantidad_recaudada + _cantidad));

        return flag;
    }

    //Esta funcion nos permite donar a una causa
    function donar(string memory _nombre, uint _cantidad) public returns(bool){

        bool aceptar_donacion = objetivoCumplido(_nombre, _cantidad);
        
        if(aceptar_donacion){
            causas[_nombre].cantidad_recaudada += _cantidad;
        }

        return aceptar_donacion;
    }

    //Esta funcion nos dice si emos llegado al precio objetivo
    function comprobar_causa(string memory _nombre) public view returns(bool, uint) {

        bool limite_alcanzado = false;
        Causa memory causa = causas[_nombre];
        
        limite_alcanzado = (causa.cantidad_recaudada >= causa.precio_objetivo);

        return (limite_alcanzado, causa.cantidad_recaudada);
    }
}