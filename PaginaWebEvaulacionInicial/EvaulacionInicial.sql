alter session set "_oracle_script"=true;  
create user EvaulacionInicial identified by EvaulacionInicial;
GRANT CONNECT, RESOURCE, DBA TO EvaulacionInicial;

CREATE TABLE OFICINA(
	id_oficina NUMBER(10),
	ciudad VARCHAR2(100),
    telefono VARCHAR2(100),
	direccion VARCHAR2(100),
	CONSTRAINT PK_OFICINA PRIMARY KEY (id_oficina)
);

CREATE TABLE EMPLEADO(
	id_empleado NUMBER(10),
    id_oficina NUMBER(10),
	nombre VARCHAR2(100),
	direccion NUMBER(10,2),
	telefono NUMBER(10),
	CONSTRAINT PK_EMPLEADO PRIMARY KEY(id_empleado),
	CONSTRAINT FK_EMPLEADO FOREIGN KEY (id_oficina) REFERENCES OFICINA(id_oficina)
);

CREATE TABLE CLIENTE(
	id_cliente NUMBER(10),
	nombre VARCHAR2(100),
	direccion NUMBER(10,2),
	telefono NUMBER(10),
	CONSTRAINT PK_CLIENTE PRIMARY KEY(id_cliente),
);
CREATE TABLE TIENE(
	id_oficina NUMBER(10),
	id_cliente NUMBER(10),
	CONSTRAINT PK_TIENE PRIMARY KEY(id_oficina,id_cliente),
    CONSTRAINT FK_TIENE FOREIGN KEY (id_oficina) REFERENCES OFICINA(id_oficina)
    CONSTRAINT FK_TIENE FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);
CREATE TABLE PAGO(
	id_pago NUMBER(10),
    id_cliente NUMBER(10),
	fechaPago DATE,
	totalPago NUMBER(10,2),
	CONSTRAINT PK_PAGO PRIMARY KEY(id_pago),
    CONSTRAINT FK_PAGO FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);
CREATE TABLE PRODUCTO(
	id_producto NUMBER(10),
    id_cliente NUMBER(10),
    nombre VARCHAR2(100),
	precio NUMBER(10),
	fecha_caducidad DATE,
	CONSTRAINT PK_PRODUCTO PRIMARY KEY(id_producto),
    CONSTRAINT FK_PRODUCTO FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);