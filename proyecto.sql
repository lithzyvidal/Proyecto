create database proyecto;
use proyecto;
-- tablas
create table tipo_usuarios(
id_tipos int primary key auto_increment,
nombre_tipo varchar(100) not null comment'Aqui va el tipo de usuario'
);
create table estados (
id_estado int primary key auto_increment,
Nombre_estado varchar(20) comment'Aqui va el Estado de El usuario'
);
create table tipo_documento(
id_tipo_Documento int primary key auto_increment,
nombre_documento varchar (30) comment'Aqui va el tipo de documento del usuario'
);
create table Ciudades(
id_ciudad int primary key auto_increment,
Nombre_ciudad varchar (200) comment'Aqui va la ciudad de residencia del usuario'
);
create table usuarios(
id_usuarios int primary key auto_increment,
id_tipos int,
id_tipo_documento int,
id_ciudad int,
id_estado int,
nombre varchar(100) not null comment'Aqui van los nombres de los usuarios',
apellido varchar(100) not null comment'Aqui van los apellidos de los usuarios',
numero_documento int not null comment'Aqui van los numeros de documentos de los usarios de los usuarios',
contraseña varchar(30) not null comment'Aqui van las Contraseñas de los usuarios',
telefono int comment'Aqui van los numeros telefonicos de los usuarios',
correo varchar(100) comment'Aqui van los correos de los usuarios',
direccion varchar (150) comment'Aqui van las Direcciones de residencia de los usuarios',
fecha_registro date not null comment'Aqui va la fecha de inscripcion de los usuarios',
foreign key (id_tipos) references tipo_usuarios(id_tipos),
foreign key (id_tipo_documento) references tipo_documento(id_tipo_documento),
foreign key (id_ciudad) references ciudades(id_ciudad),
foreign key (id_estado) references estados(id_estado)
);
create table materias(
id_materias int primary key auto_increment,
Nombre_materia varchar(200) comment'Aqui va el nombre de la materia',
Horas_Duracion time comment'Aqui va el tiempo de duracion de la clase'
);
create table disponibilidad_salon(
id_disponibilidad int primary key auto_increment,
Estado_Disponibilidad varchar(100) comment'Aqui va el estado del salon '
);
create table salones(
id_salon int primary key auto_increment,
nombre_aula varchar (50) comment'Aqui va el nombre o numero del aula',
capacidad int comment'Aqui va la cantidad de alumnos que caben en el aula',
id_disponibilidad int,
foreign key (id_disponibilidad) references disponibilidad_salon(id_disponibilidad)
);
create table Horarios(
id_horarios int primary key auto_increment,
id_materias int,
id_usuarios int,
id_salon int,
dia date comment'Aqui va el dia de la semana en que esta programada la clase',
hora_inicio time comment'Aqui va la hora de incio de la clase',
hora_fin time comment'Aqui va la hora de finalizacion de la clase',
foreign key (id_materias) references materias(id_materias),
foreign key (id_salon) references salones(id_salon),
foreign key (id_usuarios) references usuarios(id_usuarios)
);

-- datos 
INSERT INTO tipo_usuarios (nombre_tipo) 
VALUES
('Administrador'),
('Docente'),
('Estudiante');

INSERT INTO estados (Nombre_estado) 
VALUES
('Activo'),
('Inactivo'),
('Suspendido');

INSERT INTO tipo_documento (nombre_documento) 
VALUES
('CC'),
('TI'),
('CE'),
('Pasaporte');

INSERT INTO Ciudades (Nombre_ciudad) 
VALUES
('Bogotá'),
('Medellín'),
('Cali'),
('Barranquilla');

INSERT INTO usuarios (id_tipos,id_tipo_documento,id_ciudad,id_estado,nombre,apellido,numero_documento,contraseña,telefono,correo,direccion,fecha_registro) 
VALUES
(1, 1, 1, 1, 'Carlos', 'Pérez', 123456789, 'admin123', 3001234567, 'carlos@correo.com', 'Calle 10 #20-30', '2024-01-10'),
(2, 1, 2, 1, 'María', 'Gómez', 987654321, 'docente123', 3019876543, 'maria@correo.com', 'Carrera 50 #40-20', '2024-02-15'),
(3, 2, 3, 1, 'Juan', 'Rodríguez', 456789123, 'estudiante123', 3024567891, 'juan@correo.com', 'Avenida 3 #15-45', '2024-03-01'),
(3,1,1,1,'Ana','Martínez',100000001,'pass001',3001110001,'ana1@correo.com','Calle 1','2024-01-01'),
(3,2,2,1,'Luis','Ramírez',100000002,'pass002',3001110002,'luis2@correo.com','Calle 2','2024-01-02'),
(3,1,3,1,'Sofía','Torres',100000003,'pass003',3001110003,'sofia3@correo.com','Calle 3','2024-01-03'),
(3,2,4,1,'Pedro','López',100000004,'pass004',3001110004,'pedro4@correo.com','Calle 4','2024-01-04'),
(3,1,1,1,'Laura','Hernández',100000005,'pass005',3001110005,'laura5@correo.com','Calle 5','2024-01-05'),
(3,2,2,1,'Diego','Castro',100000006,'pass006',3001110006,'diego6@correo.com','Calle 6','2024-01-06'),
(3,1,3,1,'Valentina','Ríos',100000007,'pass007',3001110007,'vale7@correo.com','Calle 7','2024-01-07'),
(3,2,4,1,'Andrés','Moreno',100000008,'pass008',3001110008,'andres8@correo.com','Calle 8','2024-01-08'),
(2,1,1,1,'Paula','Vargas',100000009,'pass009',3001110009,'paula9@correo.com','Calle 9','2024-01-09'),
(2,1,2,1,'Camilo','Suárez',100000010,'pass010',3001110010,'camilo10@correo.com','Calle 10','2024-01-10'),
(2,1,3,1,'Natalia','Mendoza',100000011,'pass011',3001110011,'natalia11@correo.com','Calle 11','2024-01-11'),
(2,1,4,1,'Jorge','Pineda',100000012,'pass012',3001110012,'jorge12@correo.com','Calle 12','2024-01-12'),
(2,1,1,1,'Mónica','Salazar',100000013,'pass013',3001110013,'monica13@correo.com','Calle 13','2024-01-13'),
(2,1,2,1,'Ricardo','Mejía',100000014,'pass014',3001110014,'ricardo14@correo.com','Calle 14','2024-01-14'),
(2,1,3,1,'Diana','Ortega',100000015,'pass015',3001110015,'diana15@correo.com','Calle 15','2024-01-15'),
(1,1,1,1,'Admin','Principal',100000016,'admin16',3001110016,'admin16@correo.com','Oficina','2024-01-16'),
(1,1,2,1,'Admin','Secundario',100000017,'admin17',3001110017,'admin17@correo.com','Oficina','2024-01-17'),
(3,1,3,1,'Kevin','Gil',100000018,'pass018',3001110018,'kevin18@correo.com','Calle 18','2024-01-18'),
(3,2,4,1,'Juliana','Cortés',100000019,'pass019',3001110019,'juliana19@correo.com','Calle 19','2024-01-19'),
(3,1,1,1,'Sebastián','Peña',100000020,'pass020',3001110020,'sebastian20@correo.com','Calle 20','2024-01-20');

INSERT INTO materias (Nombre_materia, Horas_Duracion) 
VALUES
('Matemáticas', '02:00:00'),
('Programación', '03:00:00'),
('Bases de Datos', '02:30:00'),
('Álgebra','02:00:00'),
('Geometría','02:00:00'),
('Trigonometría','02:00:00'),
('Cálculo I','03:00:00'),
('Cálculo II','03:00:00'),
('Física I','02:30:00'),
('Física II','02:30:00'),
('Química','02:00:00'),
('Programación I','03:00:00'),
('Programación II','03:00:00'),
('Estructuras de Datos','03:00:00'),
('Bases de Datos I','02:30:00'),
('Bases de Datos II','02:30:00'),
('Ingeniería de Software','03:00:00'),
('Sistemas Operativos','03:00:00'),
('Redes','02:30:00'),
('Inteligencia Artificial','03:00:00'),
('Estadística','02:00:00'),
('Metodología de la Investigación','02:00:00'),
('Ética Profesional','01:30:00');

INSERT INTO disponibilidad_salon (Estado_Disponibilidad) 
VALUES
('Disponible'),
('Ocupado'),
('En mantenimiento');

INSERT INTO salones (nombre_aula, capacidad, id_disponibilidad) 
VALUES
('Aula 101', 30, 1),
('Aula 202', 40, 1),
('Laboratorio 1', 25, 2),
('Aula 301',30,1),
('Aula 302',30,1),
('Aula 303',35,1),
('Aula 304',40,1),
('Aula 305',25,1),
('Aula 306',30,2),
('Aula 307',45,1),
('Aula 308',50,1),
('Aula 309',30,1),
('Aula 310',35,1),
('Laboratorio 2',25,1),
('Laboratorio 3',25,2),
('Laboratorio 4',30,1),
('Sala Multimedia 1',40,1),
('Sala Multimedia 2',40,1),
('Auditorio Pequeño',80,1),
('Auditorio Grande',150,1),
('Sala Virtual 1',20,3),
('Sala Virtual 2',20,3),
('Sala Virtual 3',20,1);

INSERT INTO Horarios (id_materias,id_usuarios,id_salon,dia,hora_inicio,hora_fin) 
VALUES
(1, 2, 1, '2024-04-01', '08:00:00', '10:00:00'),
(2, 2, 2, '2024-04-02', '10:00:00', '13:00:00'),
(3, 2, 3, '2024-04-03', '14:00:00', '16:30:00');
-- consultas


-- Mostrar usuarios activos
SELECT nombre, apellido, correo
FROM usuarios
WHERE id_estado = 1;
-- Listar usuarios con su tipo
SELECT u.nombre, u.apellido, t.nombre_tipo
FROM usuarios u
JOIN tipo_usuarios t ON u.id_tipos = t.id_tipos;
-- Usuarios con ciudad y estado
SELECT 
    u.nombre,
    u.apellido,
    c.Nombre_ciudad,
    e.Nombre_estado
FROM usuarios u
JOIN ciudades c ON u.id_ciudad = c.id_ciudad
JOIN estados e ON u.id_estado = e.id_estado;
-- Usuarios con tipo de documento
SELECT 
    u.nombre,
    u.apellido,
    td.nombre_documento,
    u.numero_documento
FROM usuarios u
JOIN tipo_documento td ON u.id_tipo_documento = td.id_tipo_documento;
-- Horarios con materia y salón
SELECT 
    m.Nombre_materia,
    s.nombre_aula,
    h.dia,
    h.hora_inicio,
    h.hora_fin
FROM horarios h
JOIN materias m ON h.id_materias = m.id_materias
JOIN salones s ON h.id_salon = s.id_salon;
-- Salones que nunca han sido usados
SELECT s.nombre_aula
FROM salones s
LEFT JOIN horarios h ON s.id_salon = h.id_salon
WHERE h.id_horarios IS NULL;


-- borrar tablas
-- drop table ciudades, disponibilidad_salon, estados, horarios, materias, salones, tipo_documento, tipo_usuarios, usuarios;
