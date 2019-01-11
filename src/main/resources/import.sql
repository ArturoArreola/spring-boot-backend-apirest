/*Poblar tabla regiones*/

INSERT INTO regiones (id, nombre) VALUES (1, 'Sudamérica');
INSERT INTO regiones (id, nombre) VALUES (2, 'Centroamérica');
INSERT INTO regiones (id, nombre) VALUES (3, 'Norteamérica');
INSERT INTO regiones (id, nombre) VALUES (4, 'Europa');
INSERT INTO regiones (id, nombre) VALUES (5, 'África');
INSERT INTO regiones (id, nombre) VALUES (6, 'Asia');
INSERT INTO regiones (id, nombre) VALUES (7, 'Oceanía');

/*Poblar tabla clientes*/

INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (1, 'Keith', 'Garrett', 'keith_89@example.com', '1989-10-12');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (3, 'Gary', 'Banks', 'gary_banks@example.com', '1986-02-03');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (4, 'Jerry', 'Fisher', 'albert_86@example.com', '1984-04-05');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (2, 'Emma', 'Stephens', 'carolyn.boyd@example.com', '1983-06-06');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (1, 'Olivia', 'Dunn', 'rebecca.shaw@example.com', '1976-11-11');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (5, 'Tiffany', 'Gordon', 'karen85@example.com', '1992-03-08');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (7, 'Mark', 'Stephens', 'lauren_owens@example.com', '1991-10-06');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (6, 'George', 'Freeman', 'victoria89@example.com', '1989-11-12');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (3, 'Ryan', 'Aguilar', 'joseph-88@example.com', '1988-12-12');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (5, 'Nancy', 'Reynolds', 'nancy88@example.com', '1999-11-02');

/*Creando usuarios*/

INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('admin', '$2a$04$qvBNuAEw7aTU3bFrl0jECeudtAbs5HXQzPo5lt81/6zkVAK2rcP86', 1, 'admin', 'paterno', 'dos@dos.com');
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('arturo', '$2a$04$qvBNuAEw7aTU3bFrl0jECeudtAbs5HXQzPo5lt81/6zkVAK2rcP86', 1, 'arturo', 'arreola', 'uno@uno.com');

/*Creando roles*/

INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN');
INSERT INTO roles (nombre) VALUES ('ROLE_USER');

/* Creando relacion usuario-rol*/

INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (1,1);
INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (2,2);
