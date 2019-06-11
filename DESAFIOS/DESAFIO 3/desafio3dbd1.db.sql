

/*CREATE TABLE afliccion_emergencia (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	id_visita_emergencia	INTEGER NOT NULL,
	id_afliccion	INTEGER NOT NULL,
	FOREIGN KEY(id_visita_emergencia) REFERENCES visita_emergencia(id),
	FOREIGN KEY(id_afliccion) REFERENCES aflicciones(id)
);*/

/* CREATE TABLE visita_emergencia (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	fecha_visita	INTEGER,
	id_paciente	INTEGER,
	id_medico	INTEGER,
	FOREIGN KEY(id_paciente) REFERENCES pacientes(cedula_paciente),
	FOREIGN KEY(id_medico) REFERENCES medicos(id)
);

CREATE TABLE pacientes (
	cedula_paciente	INTEGER NOT NULL UNIQUE,
	nombre_paciente	TEXT,
	telefono_paciente	INTEGER,
	id_ciudad	INTEGER,
	PRIMARY KEY(cedula_paciente),
	FOREIGN KEY(id_ciudad) REFERENCES ciudad(id)
); */

/* CREATE TABLE medicos (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
	nombre	TEXT,
	cedula	INTEGER UNIQUE,
	idtipomedico	INTEGER,
	idespecialidad	INTEGER,
	FOREIGN KEY(idtipomedico) REFERENCES tipomedico(id),
	FOREIGN KEY(idespecialidad) REFERENCES especialidad(id)
);
CREATE TABLE aflicciones (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	tipo_afliccion	TEXT NOT NULL
);

CREATE TABLE especialidad (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	especialidad	TEXT
);
CREATE TABLE tipomedico (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	tipomedico	TEXT
);
CREATE TABLE ciudad (
	id	INTEGER PRIMARY KEY AUTO_INCREMENT,
	nombre_ciudad	TEXT
);
INSERT INTO afliccion_emergencia VALUES (1,1,4);
INSERT INTO afliccion_emergencia VALUES (2,2,4);
INSERT INTO afliccion_emergencia VALUES (3,2,1);
INSERT INTO afliccion_emergencia VALUES (4,3,1);
INSERT INTO afliccion_emergencia VALUES (5,3,2);
INSERT INTO afliccion_emergencia VALUES (6,3,4);
INSERT INTO afliccion_emergencia VALUES (7,4,5);
INSERT INTO afliccion_emergencia VALUES (8,5,2);
INSERT INTO afliccion_emergencia VALUES (9,6,4); */

/* INSERT INTO pacientes VALUES (12345678,'carlos',4125986412,2);
INSERT INTO pacientes VALUES (12345679,'luisa',4265478541,10);
INSERT INTO pacientes VALUES (19591303,'eduardo',4245142978,1);
INSERT INTO pacientes VALUES (20321456,'miguel',4163256478,14);
INSERT INTO pacientes VALUES (20321457,'jose',4142596321,4);
INSERT INTO pacientes VALUES (20321458,'luis',4245478965,6);
INSERT INTO medicos VALUES (1,'dr a',1,1,1);
INSERT INTO medicos VALUES (2,'dr b',2,2,1);
INSERT INTO medicos VALUES (3,'dr c',3,3,1);
INSERT INTO medicos VALUES (4,'dr d',4,1,2);
INSERT INTO medicos VALUES (5,'dr e',5,2,2);
INSERT INTO aflicciones VALUES (1,'desmayos');
INSERT INTO aflicciones VALUES (2,'traumatismos');
INSERT INTO aflicciones VALUES (3,'patologia respiratoria');
INSERT INTO aflicciones VALUES (4,'patologia cardiaca');
INSERT INTO aflicciones VALUES (5,'patologia abdominal');
INSERT INTO especialidad VALUES (1,'anestesiologo');
INSERT INTO especialidad VALUES (2,'angiologo');
INSERT INTO especialidad VALUES (3,'alergologo');
INSERT INTO especialidad VALUES (4,'biomedico');
INSERT INTO especialidad VALUES (5,'cardiologo');
INSERT INTO especialidad VALUES (6,'cirujano general');
INSERT INTO especialidad VALUES (7,'cirujano plastico');
INSERT INTO especialidad VALUES (8,'dermatologo');
INSERT INTO especialidad VALUES (9,'dietologo');
INSERT INTO especialidad VALUES (10,'embriologo');
INSERT INTO especialidad VALUES (11,'endocrinologo');
INSERT INTO especialidad VALUES (12,'epidemiologo');
INSERT INTO especialidad VALUES (13,'farmacologo');
INSERT INTO especialidad VALUES (14,'fitoterapeuta');
INSERT INTO especialidad VALUES (15,'fonoaudiologo');
INSERT INTO especialidad VALUES (16,'gastroenterologo');
INSERT INTO especialidad VALUES (17,'geriatra');
INSERT INTO especialidad VALUES (18,'gerontologo');
INSERT INTO especialidad VALUES (19,'hematologo');
INSERT INTO especialidad VALUES (20,'hepatologo');
INSERT INTO especialidad VALUES (21,'infectologo');
INSERT INTO especialidad VALUES (22,'inmunologo');
INSERT INTO especialidad VALUES (23,'nefrologo');
INSERT INTO especialidad VALUES (24,'neurologo');
INSERT INTO especialidad VALUES (25,'obstetra');
INSERT INTO especialidad VALUES (26,'odontologo');
INSERT INTO especialidad VALUES (27,'oftalmologo');
INSERT INTO especialidad VALUES (28,'oncologo');
INSERT INTO especialidad VALUES (29,'optometrista');
INSERT INTO especialidad VALUES (30,'ortopedista');
INSERT INTO especialidad VALUES (31,'otorrinolaringiologo');
INSERT INTO especialidad VALUES (32,'parasitologo');
INSERT INTO especialidad VALUES (33,'pediatra');
INSERT INTO especialidad VALUES (34,'podologo');
INSERT INTO especialidad VALUES (35,'psiquiatra');
INSERT INTO especialidad VALUES (36,'radiologo');
INSERT INTO especialidad VALUES (37,'reumatologo');
INSERT INTO especialidad VALUES (38,'rinologo');
INSERT INTO especialidad VALUES (39,'toxicilogo');
INSERT INTO especialidad VALUES (40,'traumatologo');
INSERT INTO especialidad VALUES (41,'urulogo');
INSERT INTO tipomedico VALUES (1,'interno');
INSERT INTO tipomedico VALUES (2,'pasante');
INSERT INTO tipomedico VALUES (3,'master');
INSERT INTO ciudad VALUES (1,'Barquisimeto');
INSERT INTO ciudad VALUES (2,'Agua Salada');
INSERT INTO ciudad VALUES (3,'Aguada Grande');
INSERT INTO ciudad VALUES (4,'Aregue');
INSERT INTO ciudad VALUES (5,'Arenales');
INSERT INTO ciudad VALUES (6,'Atarigua');
INSERT INTO ciudad VALUES (7,'Baragua');
INSERT INTO ciudad VALUES (8,'Barbacoa');
INSERT INTO ciudad VALUES (9,'Basarida');
INSERT INTO ciudad VALUES (10,'Bobare');
INSERT INTO ciudad VALUES (11,'Bocare');
INSERT INTO ciudad VALUES (12,'Buena Vista');
INSERT INTO ciudad VALUES (13,'Burere');
INSERT INTO ciudad VALUES (14,'Cabudare');
INSERT INTO ciudad VALUES (15,'Cariragua');
INSERT INTO ciudad VALUES (16,'Carora');
INSERT INTO ciudad VALUES (17,'Casa de Agua');
INSERT INTO ciudad VALUES (18,'Cubiro');
INSERT INTO ciudad VALUES (19,'Duaca');
INSERT INTO ciudad VALUES (20,'El Empedrado');
INSERT INTO ciudad VALUES (21,'El Porvenir');
INSERT INTO ciudad VALUES (22,'Guadalupe');
INSERT INTO ciudad VALUES (23,'Guarico');
INSERT INTO ciudad VALUES (24,'Humocaro Alto');
INSERT INTO ciudad VALUES (25,'Humocaro Bajo');
INSERT INTO ciudad VALUES (26,'La Miel');
INSERT INTO ciudad VALUES (27,'La Pastora');
INSERT INTO ciudad VALUES (28,'La Vega');
INSERT INTO ciudad VALUES (29,'Las Casitas');
INSERT INTO ciudad VALUES (30,'Las Guabinas');
INSERT INTO ciudad VALUES (31,'Los Rastrojos');
INSERT INTO ciudad VALUES (32,'Los Yabos');
INSERT INTO ciudad VALUES (33,'Matatere');
INSERT INTO ciudad VALUES (34,'Moran');
INSERT INTO ciudad VALUES (35,'Moroturo');
INSERT INTO ciudad VALUES (36,'Moyetones');
INSERT INTO ciudad VALUES (37,'Palmarito');
INSERT INTO ciudad VALUES (38,'Pie de Cuesta');
INSERT INTO ciudad VALUES (39,'Puricaure');
INSERT INTO ciudad VALUES (40,'Quebrada Arriba');
INSERT INTO ciudad VALUES (41,'Quíbor');
INSERT INTO ciudad VALUES (42,'Río Claro');
INSERT INTO ciudad VALUES (43,'Río Tocuyo');
INSERT INTO ciudad VALUES (44,'San Francisco');
INSERT INTO ciudad VALUES (45,'San Miguel');
INSERT INTO ciudad VALUES (46,'San Pablo de Lara');
INSERT INTO ciudad VALUES (47,'San Pedro');
INSERT INTO ciudad VALUES (48,'Sanare');
INSERT INTO ciudad VALUES (49,'Sarare');
INSERT INTO ciudad VALUES (50,'Siquisique');
INSERT INTO ciudad VALUES (51,'Urucure');
INSERT INTO ciudad VALUES (52,'Villa Nueva'); */

INSERT INTO visita_emergencia VALUES (1,20/05/2019,19591303,2);
INSERT INTO visita_emergencia VALUES (2,21/05/2019,12345678,4);
INSERT INTO visita_emergencia VALUES (3,23/05/2019,12345679,5);
INSERT INTO visita_emergencia VALUES (4,23/05/2019,20321456,1);
INSERT INTO visita_emergencia VALUES (5,24/05/2019,20321456,2);
INSERT INTO visita_emergencia VALUES (6,24/05/2019,20321457,5);

CREATE UNIQUE INDEX idx_aflicc_emerg ON afliccion_emergencia (
	id_visita_emergencia,
	id_afliccion
);
COMMIT;
