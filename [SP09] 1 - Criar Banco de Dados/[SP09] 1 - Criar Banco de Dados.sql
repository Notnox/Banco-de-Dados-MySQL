CREATE DATABASE IF NOT EXISTS `escola`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS professores (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    matricula INT ,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    endereço VARCHAR(500),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nasicmento DATE,
    nacionalidade VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS estudantes (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    matricula INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    endereço VARCHAR(500),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nasicmento DATE,
    nacionalidade VARCHAR(50),
    media_geral FLOAT,
    cursando INT,
    FOREIGN KEY (cursando) REFERENCES cursos(id)
);

CREATE TABLE IF NOT EXISTS cursos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo INT,
    descrição VARCHAR(100),
    EAD BOOLEAN,
    presencial BOOLEAN,
    professor_responsável VARCHAR(100),
    número_maximo_alunos_simultâneo INT
);

DROP TABLE estudantes;

DESCRIBE estudantes;

ALTER TABLE professores ADD CONSTRAINT PRIMARY KEY (id);
ALTER TABLE professores MODIFY id INT AUTO_INCREMENT;
ALTER TABLE estudantes ADD CONSTRAINT PRIMARY KEY (id);
ALTER TABLE estudantes MODIFY id INT AUTO_INCREMENT;
ALTER TABLE cursos ADD CONSTRAINT PRIMARY KEY (id);
ALTER TABLE cursos MODIFY id INT AUTO_INCREMENT;

INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (1, 99211, "Anthony Gabriel", "Cobaleda", "Rua Santa Luzia (343)", "(91)66726-1328", "el_Cobaleda943@empresax.com.br", 20/6/1968, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (2, 67404, "Martin", "Coe", "Rua Santa Maria  (275)", "(64)90752-1139", "in_Coe492@empresax.com.br", 2/9/1994, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (3, 81136, "Matteo", "Coello", "Rua Santa Rita  (239)", "(15)42315-7655", "eo_Coello836@empresax.com.br", 28/5/1987, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (4, 61413, "Oliver", "Coen", "Rua Santo Antônio (554)", "(89)88644-6406", "er_Coen170@empresax.com.br", 2/12/1971, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (5, 53931, "Arthur Gabriel", "Cohen", "Rua Santos Dumont  (306)", "(86)35365-7996", "el_Cohen381@empresax.com.br", 5/6/1957, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (6, 53904, "Ryan", "Coles", "Rua Sao Francisco (442)", "(27)51635-6522", "an_Coles836@empresax.com.br", 18/7/1975, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (7, 60675, "Raul", "Colina", "Rua Sao João (455)", "(94)67569-4814", "ul_Colina727@empresax.com.br", 23/8/1984, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (8, 76224, "Luan", "Colindres", "Rua Sao Jorge  (341)", "(78)23000-5926", "an_Colindres970@empresax.com.br", 26/6/1953, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (9, 50231, "Tomás", "Collado", "Rua São José (638)", "(56)14281-4097", "ás_Collado684@empresax.com.br", 4/5/1966, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (10, 35806, "Mathias", "Collina", "Rua Sao Luiz  (249)", "(32)61063-8838", "as_Collina593@empresax.com.br", 7/2/1973, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (11, 71216, "Davi Luiz", "Colom", "Rua São Paulo (619)", "(48)98847-3943", "iz_Colom525@empresax.com.br", 4/3/1957, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (12, 9965, "Pedro Lucas", "Coloma", "Rua Sao Pedro (458)", "(85)51828-2451", "as_Coloma571@empresax.com.br", 9/11/1966, "Brasileiro");
INSERT INTO professores (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade) VALUES (13, 88004, "Derick", "Colombo", "Rua Sao Sebastiao (357)", "(49)78026-3995", "ck_Colombo968@empresax.com.br", 8/2/1969, "Brasileiro");

INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (1, 63561, "Miguel", "Castillo", "Rua Dois (1534)", "(84)94008-7583", "el_Castillo265@empresax.com.br", 19/8/1955, "Brasileiro", 6.3, 14);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (2, 71172, "Arthur", "Castro", "Avenida Brasil (532)", "(84)10007-6149", "ur_Castro846@empresax.com.br", 24/10/1992, "Brasileiro", 3.6, 11);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (3, 20413, "Heitor", "Catania", "Rua 1 (476)", "(66)93415-5463", "or_Catania636@empresax.com.br", 4/6/1992, "Brasileiro", 5.4, 53);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (4, 99086, "Bernardo", "Cateres", "Rua 10  (281)", "(85)11488-9855", "do_Cateres180@empresax.com.br", 17/4/1977, "Brasileiro", 3.5, 38);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (5, 65387, "Théo", "Catón", "Rua 11  (237)", "(69)87428-3665", "éo_Catón421@empresax.com.br", 24/6/1985, "Brasileiro", 9.9, 52);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (6, 32665, "Davi", "Cavalceta", "Rua 12  (241)", "(44)39875-8145", "vi_Cavalceta170@empresax.com.br", 30/3/1979, "Brasileiro", 9.1, 33);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (7, 20222, "Gabriel", "Cavaller", "Rua 2 (502)", "(18)45858-3364", "el_Cavaller393@empresax.com.br", 21/10/1987, "Brasileiro", 9.0, 3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (8, 6017, "Pedro", "Cavallo", "Rua 3 (460)", "(43)24126-6114", "ro_Cavallo755@empresax.com.br", 8/5/1955, "Brasileiro", 6.0, 9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (9, 50754, "Samuel", "Cavanillas", "Rua 4 (425)", "(14)65894-1970", "el_Cavanillas963@empresax.com.br", 16/6/1981, "Brasileiro", 4.8, 21);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (10, 40147, "Lorenzo", "Cavazos", "Rua 5 (392)", "(71)40727-2940", "zo_Cavazos205@empresax.com.br", 30/8/1992, "Brasileiro", 3.8, 32);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (11, 52130, "Benjamin", "Cavero", "Rua 6 (378)", "(78)99485-5173", "in_Cavero581@empresax.com.br", 6/10/1973, "Brasileiro", 5.7, 38);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (12, 24271, "Matheus", "Cazanga", "Rua 7 (343)", "(60)37455-4306", "us_Cazanga247@empresax.com.br", 4/4/1967, "Brasileiro", 8.9, 50);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (13, 19711, "Lucas", "Ceba", "Rua 8  (302)", "(24)50248-8474", "as_Ceba576@empresax.com.br", 4/12/1992, "Brasileiro", 1.7, 37);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (14, 48866, "Benício", "Ceballos", "Rua 9  (275)", "(29)86678-9592", "io_Ceballos383@empresax.com.br", 28/3/1952, "Brasileiro", 4.4, 44);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (15, 47268, "Gael", "Ceciliano", "Rua A (1299)", "(50)35620-4229", "el_Ceciliano238@empresax.com.br", 19/5/1952, "Brasileiro", 8.9, 21);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (16, 66528, "Joaquim", "Cedeño", "Rua Alagoas  (252)", "(85)42515-3260", "im_Cedeño642@empresax.com.br", 22/6/1951, "Brasileiro", 2.6, 21);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (17, 74302, "Nicolas", "Cejudo", "Rua Amazonas (359)", "(84)54785-3370", "as_Cejudo555@empresax.com.br", 7/1/1962, "Brasileiro", 6.1, 33);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (18, 60011, "Henrique", "Celada", "Rua B (1380)", "(48)49094-3382", "ue_Celada439@empresax.com.br", 30/12/1985, "Brasileiro", 5.7, 2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (19, 29065, "Rafael", "Celedón", "Rua Bahia (360)", "(56)21535-9877", "el_Celedón784@empresax.com.br", 12/10/1983, "Brasileiro", 3.7, 35);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (20, 92916, "Isaac", "Celís", "Rua Bela Vista (347)", "(16)64784-9165", "ac_Celís318@empresax.com.br", 7/9/1984, "Brasileiro", 6.7, 5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (21, 54122, "Guilherme", "Centella", "Rua Belo Horizonte  (281)", "(27)98078-5070", "me_Centella569@empresax.com.br", 27/10/1974, "Brasileiro", 8.5, 50);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (22, 99170, "Murilo", "Centeno", "Rua Boa Vista  (251)", "(96)14660-6041", "lo_Centeno952@empresax.com.br", 3/2/1985, "Brasileiro", 3.7, 20);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (23, 99584, "Lucca", "Cepeda", "Rua C (1239)", "(17)64266-5550", "ca_Cepeda296@empresax.com.br", 16/10/1989, "Brasileiro", 8.8, 1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (24, 14376, "Gustavo", "Cerceño", "Rua Castro Alves  (331)", "(66)88725-1300", "vo_Cerceño729@empresax.com.br", 7/9/1995, "Brasileiro", 1.2, 4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (25, 74133, "João Miguel", "Cerda", "Rua Ceara  (284)", "(78)62392-2446", "el_Cerda422@empresax.com.br", 24/11/1975, "Brasileiro", 2.4, 46);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (26, 74270, "Noah", "Cerdas", "Rua Cinco (1217)", "(69)15752-2364", "ah_Cerdas399@empresax.com.br", 27/5/1987, "Brasileiro", 8.5, 6);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (27, 61957, "Felipe", "Cerna", "Rua D (1026)", "(52)36651-5537", "pe_Cerna472@empresax.com.br", 17/1/1955, "Brasileiro", 4.8, 41);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (28, 79323, "Anthony", "Cernas", "Rua Da Paz  (294)", "(13)65057-6432", "ny_Cernas281@empresax.com.br", 23/4/1993, "Brasileiro", 2.7, 44);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (29, 33634, "Enzo", "Cerón", "Rua Das Flores  (279)", "(13)87089-3779", "zo_Cerón624@empresax.com.br", 24/7/1950, "Brasileiro", 4.9, 15);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (30, 43981, "João Pedro", "Cerpas", "Rua Dez (769)", "(82)49579-9188", "ro_Cerpas394@empresax.com.br", 21/8/1950, "Brasileiro", 2.2, 37);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (31, 21934, "Pietro", "Cerros", "Rua Dezenove  (333)", "(77)88232-8796", "ro_Cerros198@empresax.com.br", 12/2/1956, "Brasileiro", 7.0, 10);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (32, 22405, "Bryan", "Cervantes", "Rua Dezesseis (423)", "(31)33336-2228", "an_Cervantes135@empresax.com.br", 16/8/1963, "Brasileiro", 2.5, 4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (33, 76888, "Daniel", "Cervilla", "Rua Dezessete (380)", "(49)44566-4010", "el_Cervilla432@empresax.com.br", 24/1/1956, "Brasileiro", 9.8, 15);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (34, 50210, "Pedro Henrique", "Céspedes", "Rua Dezoito (357)", "(35)44885-7591", "ue_Céspedes371@empresax.com.br", 17/9/1950, "Brasileiro", 8.3, 3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (35, 61345, "Enzo Gabriel", "Cevallos", "Rua Dom Pedro II  (272)", "(84)78621-2509", "el_Cevallos482@empresax.com.br", 19/8/1963, "Brasileiro", 2.5, 17);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (36, 16850, "Leonardo", "Cevedo", "Rua Doze (593)", "(82)28349-3296", "do_Cevedo332@empresax.com.br", 8/5/1962, "Brasileiro", 8.0, 49);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (37, 95174, "Vicente", "Cevilla", "Rua Duque De Caxias  (329)", "(12)40149-9172", "te_Cevilla662@empresax.com.br", 2/12/1980, "Brasileiro", 3.3, 6);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (38, 24659, "Valentim", "Chabrol", "Rua E (914)", "(49)93342-8216", "im_Chabrol974@empresax.com.br", 26/6/1973, "Brasileiro", 7.7, 16);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (39, 52243, "Eduardo", "Chacón", "Rua Espirito Santo  (298)", "(97)99527-2100", "do_Chacón444@empresax.com.br", 11/8/1950, "Brasileiro", 3.1, 39);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (40, 31581, "Antônio", "Chamarro", "Rua F (819)", "(12)28906-3615", "io_Chamarro520@empresax.com.br", 25/7/1963, "Brasileiro", 2.2, 21);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (41, 22165, "Emanuel", "Chamorro", "Rua G (705)", "(45)97865-1648", "el_Chamorro331@empresax.com.br", 22/7/1954, "Brasileiro", 6.1, 40);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (42, 61797, "Davi Lucca", "Chanquín", "Rua Goias  (287)", "(66)68409-8424", "ca_Chanquín355@empresax.com.br", 19/4/1967, "Brasileiro", 1.8, 37);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (43, 31878, "Bento", "Chanta", "Rua H (627)", "(17)41544-6732", "to_Chanta588@empresax.com.br", 5/8/1995, "Brasileiro", 2.9, 35);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (44, 61260, "João", "Chanto", "Rua I (507)", "(32)90229-3835", "ão_Chanto632@empresax.com.br", 1/4/1962, "Brasileiro", 7.3, 22);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (45, 5588, "João Lucas", "Chavarría", "Rua J (453)", "(43)74691-5854", "as_Chavarría688@empresax.com.br", 15/10/1975, "Brasileiro", 3.0, 25);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (46, 21029, "Caleb", "Chavera", "Rua José Bonifácio  (276)", "(27)38338-9133", "eb_Chavera611@empresax.com.br", 20/7/1991, "Brasileiro", 3.9, 9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (47, 96002, "Levi", "Chaverri", "Rua K  (290)", "(24)95677-8561", "vi_Chaverri576@empresax.com.br", 20/9/1967, "Brasileiro", 9.9, 23);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (48, 87267, "Vitor", "Chaves", "Rua L (374)", "(54)70048-8438", "or_Chaves890@empresax.com.br", 5/3/1972, "Brasileiro", 7.1, 7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (49, 76179, "Enrico", "Chávez", "Rua M (347)", "(10)85822-3934", "co_Chávez730@empresax.com.br", 14/11/1959, "Brasileiro", 3.7, 39);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (50, 65411, "Cauã", "Chavira", "Rua Maranhão  (255)", "(61)23666-5897", "uã_Chavira509@empresax.com.br", 18/8/1952, "Brasileiro", 7.7, 44);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (51, 40505, "Caio", "Cheves", "Rua Mato Grosso  (275)", "(81)23435-6545", "io_Cheves353@empresax.com.br", 19/4/1955, "Brasileiro", 8.0, 29);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (52, 81897, "Vinícius", "Chévez", "Rua Minas Gerais  (318)", "(86)26588-5135", "us_Chévez711@empresax.com.br", 28/4/1971, "Brasileiro", 5.2, 3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (53, 23860, "Henry", "Chica", "Rua N  (310)", "(10)48827-1166", "ry_Chica583@empresax.com.br", 2/7/1969, "Brasileiro", 5.4, 21);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (54, 32375, "João Gabriel", "Chicaiza", "Rua Nove (806)", "(51)92556-8951", "el_Chicaiza853@empresax.com.br", 26/4/1985, "Brasileiro", 1.7, 27);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (55, 79447, "Augusto", "Chicas", "Rua O  (239)", "(24)25247-2361", "to_Chicas477@empresax.com.br", 17/5/1980, "Brasileiro", 5.2, 37);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (56, 66143, "Ravi", "Chilquillo", "Rua Oito (931)", "(50)29704-3249", "vi_Chilquillo914@empresax.com.br", 2/6/1972, "Brasileiro", 5.0, 16);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (57, 31248, "Francisco", "Chinchilla", "Rua Onze (637)", "(11)36276-3547", "co_Chinchilla252@empresax.com.br", 1/11/1973, "Brasileiro", 3.1, 25);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (58, 26662, "Otávio", "Chinchillo", "Rua Pará  (264)", "(88)70906-2613", "io_Chinchillo403@empresax.com.br", 15/11/1988, "Brasileiro", 8.9, 13);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (59, 89283, "Davi Lucas", "Chirino", "Rua Paraíba  (244)", "(88)21557-6258", "as_Chirino975@empresax.com.br", 30/10/1982, "Brasileiro", 1.7, 34);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (60, 52789, "João Guilherme", "Chirinos", "Rua Parana (350)", "(80)95863-1094", "me_Chirinos437@empresax.com.br", 18/1/1986, "Brasileiro", 3.4, 47);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (61, 11004, "Thomas", "Chocano", "Rua Pernambuco  (276)", "(32)73860-1391", "as_Chocano536@empresax.com.br", 13/3/1976, "Brasileiro", 3.0, 20);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (62, 77999, "Ícaro", "Choza", "Rua Piauí  (276)", "(25)52678-7925", "ro_Choza565@empresax.com.br", 23/2/1983, "Brasileiro", 8.3, 27);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (63, 74374, "Theodoro", "Cid", "Rua Primeiro de Maio  (272)", "(62)22731-8117", "ro_Cid127@empresax.com.br", 6/7/1986, "Brasileiro", 5.0, 26);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (64, 39826, "João Vitor", "Cifuentes", "Rua Principal (1308)", "(35)17131-9520", "or_Cifuentes478@empresax.com.br", 21/10/1951, "Brasileiro", 5.2, 11);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (65, 76056, "Luiz Miguel", "Cintrón", "Rua Projetada  (329)", "(24)13491-8900", "el_Cintrón524@empresax.com.br", 7/5/1962, "Brasileiro", 3.7, 38);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (66, 32136, "Yan", "Cisar", "Rua Quatorze (452)", "(56)32006-4645", "an_Cisar864@empresax.com.br", 17/8/1960, "Brasileiro", 4.1, 18);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (67, 24782, "Yuri Thiago", "Cisne", "Rua Quatro (1370)", "(22)63032-2191", "go_Cisne784@empresax.com.br", 18/3/1993, "Brasileiro", 5.8, 41);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (68, 76938, "Arthur Miguel", "Cisnero", "Rua Quinze (456)", "(61)50694-9092", "el_Cisnero319@empresax.com.br", 3/7/1950, "Brasileiro", 3.6, 21);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (69, 85733, "Nathan", "Cisneros", "Rua Quinze De Novembro (394)", "(45)26645-7931", "an_Cisneros343@empresax.com.br", 12/8/1983, "Brasileiro", 2.6, 10);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (70, 43252, "Erick", "Cisternas", "Rua Rio De Janeiro  (289)", "(28)80849-2752", "ck_Cisternas605@empresax.com.br", 25/10/1954, "Brasileiro", 6.7, 9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (71, 92712, "Breno", "Claro", "Rua Rui Barbosa  (320)", "(79)25409-5731", "no_Claro775@empresax.com.br", 26/12/1969, "Brasileiro", 5.8, 3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (72, 8189, "Luiz Felipe", "Cleves", "Rua Santa Catarina  (320)", "(77)26088-1667", "pe_Cleves504@empresax.com.br", 11/8/1984, "Brasileiro", 4.8, 53);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (73, 48684, "Anthony Gabriel", "Cobaleda", "Rua Santa Luzia (343)", "(94)55355-5217", "el_Cobaleda828@empresax.com.br", 26/12/1991, "Brasileiro", 7.4, 38);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (74, 6814, "Martin", "Coe", "Rua Santa Maria  (275)", "(71)56640-2548", "in_Coe960@empresax.com.br", 21/9/1976, "Brasileiro", 3.7, 19);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (75, 73852, "Matteo", "Coello", "Rua Santa Rita  (239)", "(68)97592-5172", "eo_Coello947@empresax.com.br", 30/5/1968, "Brasileiro", 6.3, 22);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (76, 33030, "Oliver", "Coen", "Rua Santo Antônio (554)", "(97)28925-3013", "er_Coen908@empresax.com.br", 21/4/1951, "Brasileiro", 4.0, 38);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (77, 88698, "Arthur Gabriel", "Cohen", "Rua Santos Dumont  (306)", "(40)34683-2836", "el_Cohen936@empresax.com.br", 3/4/1952, "Brasileiro", 5.2, 45);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (78, 45873, "Ryan", "Coles", "Rua Sao Francisco (442)", "(30)43672-7736", "an_Coles713@empresax.com.br", 26/5/1965, "Brasileiro", 5.0, 46);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (79, 82986, "Raul", "Colina", "Rua Sao João (455)", "(43)75277-2718", "ul_Colina643@empresax.com.br", 26/5/1995, "Brasileiro", 1.9, 36);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (80, 61885, "Luan", "Colindres", "Rua Sao Jorge  (341)", "(71)81064-2675", "an_Colindres523@empresax.com.br", 6/7/1963, "Brasileiro", 9.6, 20);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (81, 52111, "Tomás", "Collado", "Rua São José (638)", "(18)16412-6769", "ás_Collado811@empresax.com.br", 12/12/1958, "Brasileiro", 8.4, 7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (82, 47035, "Mathias", "Collina", "Rua Sao Luiz  (249)", "(28)26972-2198", "as_Collina827@empresax.com.br", 21/11/1983, "Brasileiro", 3.1, 3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (83, 64594, "Davi Luiz", "Colom", "Rua São Paulo (619)", "(12)51688-2181", "iz_Colom253@empresax.com.br", 28/5/1977, "Brasileiro", 9.0, 34);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (84, 84703, "Pedro Lucas", "Coloma", "Rua Sao Pedro (458)", "(18)83580-6374", "as_Coloma125@empresax.com.br", 26/5/1963, "Brasileiro", 3.9, 42);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (85, 24857, "Derick", "Colombo", "Rua Sao Sebastiao (357)", "(99)95118-5694", "ck_Colombo985@empresax.com.br", 9/2/1970, "Brasileiro", 5.2, 11);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (86, 57153, "Vitor Hugo", "Colomer", "Rua Seis (1077)", "(94)26254-2154", "go_Colomer177@empresax.com.br", 2/4/1968, "Brasileiro", 2.5, 43);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (87, 58099, "Kauê", "Concepción", "Rua Sergipe  (279)", "(17)19712-4114", "uê_Concepción569@empresax.com.br", 2/10/1960, "Brasileiro", 6.7, 28);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (88, 58149, "Lucas Gabriel", "Concha", "Rua Sete (1011)", "(67)60567-1001", "el_Concha984@empresax.com.br", 4/8/1960, "Brasileiro", 8.9, 9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (89, 3432, "Arthur Henrique", "Conde", "Rua Sete de Setembro (428)", "(36)88205-6241", "ue_Conde844@empresax.com.br", 7/4/1951, "Brasileiro", 8.4, 29);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (90, 16115, "Rodrigo", "Condega", "Rua Tiradentes (384)", "(96)13325-3882", "go_Condega349@empresax.com.br", 27/4/1978, "Brasileiro", 5.9, 5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (91, 69235, "Bruno", "Condes", "Rua Três (1513)", "(91)43889-9988", "no_Condes461@empresax.com.br", 9/3/1991, "Brasileiro", 9.2, 44);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (92, 16154, "Davi Miguel", "Conedo", "Rua Treze (585)", "(12)22695-9425", "el_Conedo645@empresax.com.br", 16/1/1991, "Brasileiro", 7.1, 10);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (93, 64871, "Yago", "Conejo", "Rua Treze De Maio  (294)", "(76)64823-9635", "go_Conejo557@empresax.com.br", 17/7/1991, "Brasileiro", 1.4, 42);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (94, 35663, "José", "Congosto", "Rua Um   (1444)", "(24)62061-3305", "sé_Congosto389@empresax.com.br", 3/6/1994, "Brasileiro", 8.1, 21);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (95, 85816, "Pedro Miguel", "Conte", "Rua Vinte (362)", "(70)56396-6115", "el_Conte250@empresax.com.br", 1/8/1968, "Brasileiro", 1.9, 10);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (96, 80133, "Luiz Henrique", "Contreras", "Rua Vinte e Dois  (297)", "(23)64364-4503", "ue_Contreras147@empresax.com.br", 25/10/1987, "Brasileiro", 8.1, 8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (97, 46650, "Hugo", "Corales", "Rua Vinte e Quatro  (249)", "(25)62771-8302", "go_Corales487@empresax.com.br", 5/2/1960, "Brasileiro", 6.0, 31);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (98, 46156, "Otto", "Corao", "Rua Vinte e Três  (276)", "(35)55247-4630", "to_Corao842@empresax.com.br", 2/4/1968, "Brasileiro", 5.2, 4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (99, 82570, "Josué", "Cordeiro", "Rua Vinte e Um  298", "(44)52528-3811", "ué_Cordeiro324@empresax.com.br", 10/7/1988, "Brasileiro", 1.9, 45);


INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (1, 16356, "Administração", false, true, "Anthony Gabriel Cobaleda", 19);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (2, 19319, "Ciências Contábeis", false, true, "Martin Coe", 48);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (3, 99424, "Ciências Econômicas", false, true, "Matteo Coello", 39);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (4, 13550, "Comércio Exterior (tecnológico)", false, true, "Oliver Coen", 23);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (5, 45230, "Design de Moda", true, false, "Arthur Gabriel Cohen", 45);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (6, 72668, "Gastronomia (tecnológico)", false, true, "Ryan Coles", 32);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (7, 51723, "Gestão Comercial (tecnológico)", true, false, "Raul Colina", 47);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (8, 48156, "Gestão da Qualidade (tecnológico)", true, false, "Luan Colindres", 36);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (9, 42335, "Gestão de Recursos Humanos (tecnológico)", false, true, "Tomás Collado", 44);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (10, 20374, "Gestão Financeira (tecnológico)", true, false, "Mathias Collina", 12);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (11, 85680, "Jornalismo", false, true, "Davi Luiz Colom", 27);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (12, 76546, "Logística (tecnológico)", true, false, "Pedro Lucas Coloma", 37);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (13, 18830, "Marketing (tecnológico)", true, false, "Derick Colombo", 46);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (14, 70027, "Processos Gerenciais (tecnológico)", false, true, "Anthony Gabriel Cobaleda", 36);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (15, 95078, "Publicidade e Propaganda", false, true, "Martin Coe", 12);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (16, 32912, "Rádio, TV e Internet", false, true, "Matteo Coello", 30);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (17, 29334, "Relações Internacionais", false, true, "Oliver Coen", 29);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (18, 63234, "Relações Públicas", true, false, "Arthur Gabriel Cohen", 42);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (19, 74994, "Segurança no Trabalho", false, true, "Ryan Coles", 42);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (20, 36209, "Biomedicina", false, true, "Raul Colina", 14);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (21, 98252, "Ciências biológicas", false, true, "Luan Colindres", 40);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (22, 21315, "Ciências biológicas (licenciatura)", false, true, "Tomás Collado", 48);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (23, 73946, "Educação física (bacharelado)", false, true, "Mathias Collina", 45);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (24, 21772, "Educação física (licenciatura)", false, true, "Davi Luiz Colom", 49);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (25, 8298, "Enfermagem", false, true, "Pedro Lucas Coloma", 50);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (26, 33329, "Estética e cosmética (tecnológico)", false, true, "Derick Colombo", 17);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (27, 5952, "Farmácia", true, false, "Anthony Gabriel Cobaleda", 42);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (28, 75277, "Fisioterapia", false, true, "Martin Coe", 12);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (29, 12306, "Gestão ambiental (tecnológico)", true, false, "Matteo Coello", 30);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (30, 74287, "Gestão hospitalar", true, false, "Oliver Coen", 15);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (31, 11868, "Medicina veterinária", true, false, "Arthur Gabriel Cohen", 23);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (32, 67091, "Nutrição", true, false, "Ryan Coles", 19);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (33, 83358, "Odontologia", false, true, "Raul Colina", 49);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (34, 52163, "Psicologia", true, false, "Luan Colindres", 33);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (35, 65404, "Radiologia", false, true, "Tomás Collado", 17);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (36, 12072, "Análise e desenvolvimento de sistemas (tecnológico)", false, true, "Mathias Collina", 17);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (37, 13579, "Arquitetura e urbanismo", false, true, "Davi Luiz Colom", 44);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (38, 71492, "Ciência da computação", false, true, "Pedro Lucas Coloma", 18);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (39, 52743, "Design de interiores (tecnológico)", false, true, "Derick Colombo", 29);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (40, 70624, "Design de produto (tecnológico)", false, true, "Anthony Gabriel Cobaleda", 32);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (41, 32698, "Design gráfico (tecnológico)", false, true, "Martin Coe", 27);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (42, 24792, "Engenharia ambiental (bacharelado)", true, false, "Matteo Coello", 18);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (43, 45891, "Engenharia civil", true, false, "Oliver Coen", 24);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (44, 47109, "Engenharia de produção", false, true, "Arthur Gabriel Cohen", 42);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (45, 49001, "Engenharia elétrica", false, true, "Ryan Coles", 45);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (46, 94396, "Engenharia mecânica", true, false, "Raul Colina", 30);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (47, 18900, "Engenharia mecatrônica (bacharelado)", false, true, "Luan Colindres", 20);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (48, 33942, "Jogos digitais (tecnológico)", true, false, "Tomás Collado", 12);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (49, 38562, "Matemática (licenciatura)", true, false, "Mathias Collina", 19);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (50, 43562, "Química (bacharelado)", false, true, "Davi Luiz Colom", 29);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (51, 8631, "Química (licenciatura)", false, true, "Pedro Lucas Coloma", 35);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (52, 13716, "Redes de computadores (tecnológico)", false, true, "Derick Colombo", 40);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (53, 58068, "Sistemas de informação (bacharelado)", true, false, "Anthony Gabriel Cobaleda", 22);
INSERT INTO cursos (id, codigo, descrição, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (54, 14348, "Tecnologia da informação (tecnológico)", true, false, "Martin Coe", 45);


SELECT * FROM cursos WHERE número_maximo_alunos_simultâneo > 30 AND presencial = 1; 

SET SQL_SAFE_UPDATES=0;
UPDATE estudantes SET media_geral = 10 WHERE id = 98;
SELECT * FROM estudantes WHERE id = 98; 

DELETE FROM cursos WHERE nome = "Administração";
SELECT * FROM cursos;

SELECT * FROM professores WHERE nacionalidade = "Brasileiro";  

SELECT * FROM estudantes WHERE nome LIKE "J%";  

SELECT nome, media_geral FROM estudantes WHERE media_geral >= 7 ORDER BY media_geral DESC;

SELECT matricula, nome, media_geral, codigo, descrição FROM estudantes e
JOIN cursos c
ON e.cursando = c.id;