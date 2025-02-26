use tienda_zapatillas;

select * from zapatillas;
select * from empleados;
select * from clientes;
select * from factura;

ALTER TABLE zapatillas
ADD COLUMN marca varchar (45) not null;

ALTER TABLE zapatillas
ADD COLUMN talla int not null;

alter table empleados
modify column salario float not null;

alter table clientes
drop column pais;

alter table factura
add column total float;

insert into zapatillas (modelo,color,marca,talla)
VALUES	('XQYUN','Negro','Nike',42),
		('UOPMN','Rosas','Nike',39),
		('OPNYT','Verdes','Adidas',35);
        
DELETE from zapatillas
	where id_zapatillas in (4,5,6);


insert into empleados (nombre,tienda,salario,fecha_incorporacion)
VALUES 
	('Laura','Alcobendas',25987,  '2010-09-03'),
    ('Maria', 'Sevilla', 0 , '2001-04-11'),
    ('Ester', 'Oviedo', 30165.98, '2000-11-29');


insert into clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES
	('Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Móstoles','Madrid','28176'),
    ('Lorena','289345678','lorena@email.com','Calle Alegria','Barcelona','Barcelona','12346'),
    ('Carmen','298463759','carmen@email.com','Calle del Color','Vigo','Pontevedra','23456');

insert into factura (numero_factura, fecha, zapatilla_id, empleado_id, cliente_id, total)
VALUES
	('123', '2001-12-11', 1, 2, 1, 54.98),
    ('1234', '2005-05-23',1,1,3,89.91),
    ('12345','2015-09-18',2,3,3,76.23);




