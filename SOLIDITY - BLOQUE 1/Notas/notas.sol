// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Notas {
    //Direccion del profesor 
    address public profesor;

    //Constructor
    constructor() public {
        profesor = msg.sender;
    }

    //Mapping para relacionar el hash de la identidad del alumno con su nota del examen
    mapping(bytes32 => uint) Calificaciones;

    //Array de los alumnos que pidan revisiones de examen
    string[] revisiones;

    //Eventos
    event alumno_evaluado(bytes32, uint);
    event evento_revision(string, uint);

    //Control de las funciones ejecutables por el profoser
    modifier UnicamenteProfesor(address _direccion){

        //Requiere que la direccion introducida por parametro sea igual a la del owner
        require(_direccion == profesor, "No tienes permisos para ejecutar esta funcion");
        _;        
    }
    
    //Funcion para evaluar a alumnos
    function Evaluar(string memory _idAlumno, uint _nota) public UnicamenteProfesor(msg.sender) {

        //hash de la identificacion del alumno
        bytes32 hash_idAlumno = keccak256(abi.encodePacked(_idAlumno));

        //Relacion entre el hash del alumno con su nota
        Calificaciones[hash_idAlumno] = _nota;

        //Emitir un evento
        emit alumno_evaluado(hash_idAlumno, _nota);
    }

    //Funcion para ver las notas de un alumno
    function VerNotas (string memory _idAlumno) public view returns(uint) {
        
        bytes32 hash = keccak256(abi.encodePacked(_idAlumno));
        return Calificaciones[hash];
    }

    //Funcion para pedir revision del examen
    function Revision(string memory _idAlumno) public {

        // bytes32 hash = keccak256(abi.encodePacked(_idAlumno));
        // uint nota = Calificaciones[hash];
        // require(nota > , "No tiene ningun examen por revisar");

        for(uint i = 0; i < revisiones.length; i++){
            require(keccak256(abi.encodePacked(_idAlumno)) != keccak256(abi.encodePacked(revisiones[i])), "Ya esta en la lista de revisiones");
        }

        //Almacenamiento de la identidad del alumno en un array
        revisiones.push(_idAlumno);
        emit evento_revision(_idAlumno, 0);
    }

    //Funcion para ver las revisiones solicitadas
    function VerRevisiones() public UnicamenteProfesor(msg.sender) view returns(string[] memory){

        //Devolver las identidades de los alumnos que han solicitado revision
        return revisiones;
    }

}