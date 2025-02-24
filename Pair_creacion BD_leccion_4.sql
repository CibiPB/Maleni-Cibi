CREATE SCHEMA `tienda_zapatillas`;
USE `TIENDA_ZAPATILLAS`;
CREATE TABLE zapatillas (
	id_zapatillas INT AUTO_INCREMENT ,
    modelo VARCHAR (45) NOT NULL,
    color VARCHAR (45) NOT NULL, 
    PRIMARY KEY (id_zapatillas)
    );

CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT ,
    nombre varchar (45) not null,
    numero_telefono int not null,
    email varchar (45) not null,
    direccion varchar (45) not null,
    ciudad varchar(45) not null,
    pais varchar (45) not null,
    codigo_postal varchar (45) not null,
    PRIMARY KEY (id_cliente)
    );
    
    CREATE TABLE empleados (
		id_empleado INT AUTO_INCREMENT,
        nombre varchar(45) not null,
        tienda varchar (45) not null,
        salario INT ,
        fecha_incorpacion DATE NOT NULL,
        PRIMARY KEY (id_empleado)
        );
	
    CREATE TABLE facturas (
		id_factura INT AUTO_INCREMENT ,
        numero_factura VARCHAR (45) NOT NULL,
        fecha DATE NOT NULL,
        
        zapatilla_id INT, 
        empleado_id INT,
        cliente_id INT,
        PRIMARY KEY (id_factura),
        CONSTRAINT fk_zapatilla_id
			FOREIGN KEY (zapatilla_id)
            REFERENCES zapatillas (id_zapatillas),
		CONSTRAINT fk_empleado_id
			FOREIGN KEY (empleado_id)
            REFERENCES empleados (id_empleado),
		CONSTRAINT fk_cliente_id
			FOREIGN KEY (cliente_id)
            REFERENCES clientes(id_cliente)
            );
            
            
        
        
        
    
    
    
    
    
    
    
    
    
    
	
