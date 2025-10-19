--Tenemos las siguientes tablas:
CREATE TABLE ciudad(
    ciudad_id INT PRIMARY KEY,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(100)
);

CREATE TABLE type_usuario(
    tipo_usuario_id INT PRIMARY KEY,
    tipo_usuario VARCHAR(100)
);

CREATE TABLE usuario(
    --atributos generales
    usuario_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),

    --atributos de especializacion de empleado
    departamento VARCHAR(100),
    cargo VARCHAR(100), 

    --foraneas de usuario (tiene relacion con ciudad, tipo y condicion)
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id),
    tipo_usuario_id INT,
    FOREIGN KEY (tipo_usuario_id) REFERENCES type_usuario(tipo_usuario_id)
    
);

--Relacionados directamente con usuario:
--Usuario-Condicion -> M:N
--Usuario->Ciudad -> N:1
--Usuario->Tipo -> N:1

CREATE TABLE condicion(
    condicion_id INT PRIMARY KEY,
    tipo_condicion VARCHAR(100)
);

CREATE TABLE condicionUsuario(
    condicion_id INT,
    usuario_id INT,
    PRIMARY KEY (condicion_id, usuario_id),
    FOREIGN KEY (condicion_id) REFERENCES condicion(condicion_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

--items 
CREATE TABLE servicio(
    servicio_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(100),
    estado VARCHAR(100)
);
CREATE TABLE medio(
    medio_id INT PRIMARY KEY,
    tipo_medio VARCHAR(100)
);


--Tablas para implementar posteriormente en demostracion de video:
CREATE TABLE notificacion(
    notificacion_id INT PRIMARY KEY,
    mensaje VARCHAR(100),
    fecha_envio DATE,
    estado VARCHAR(100),
    --foraneas (tiene relacion con usuario y con medio)
    medio_id INT,
    FOREIGN KEY (medio_id) REFERENCES medio(medio_id),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
    
);
CREATE TABLE turno(
    turno_id INT PRIMARY KEY,
    fecha DATE,
    hora_inicio TIMESTAMP,
    hora_fin TIMESTAMP,
    estado VARCHAR(100),
    --foraneas (relacion con servicio y usuario)
    servicio_id INT,
    FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)

);

