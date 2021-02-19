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
    cursando VARCHAR(100)
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

DROP TABLE cursos;

DESCRIBE professores;

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

INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (1, 43465, "Miguel", "Castillo", "Rua Dois (1534)", "(73)22121-9742", "el_Castillo594@empresax.com.br", 30/2/1980, "Brasileiro", 6.3, "Administração");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (2, 23392, "Arthur", "Castro", "Avenida Brasil (532)", "(18)92640-7287", "ur_Castro804@empresax.com.br", 23/3/1952, "Brasileiro", 3.6, "Ciências Contábeis");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (3, 80612, "Heitor", "Catania", "Rua 1 (476)", "(86)41911-1304", "or_Catania567@empresax.com.br", 7/6/1950, "Brasileiro", 5.4, "Ciências Econômicas");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (4, 21859, "Bernardo", "Cateres", "Rua 10  (281)", "(78)45135-9177", "do_Cateres275@empresax.com.br", 5/5/1959, "Brasileiro", 3.5, "Comércio Exterior (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (5, 45929, "Théo", "Catón", "Rua 11  (237)", "(71)78901-1656", "éo_Catón703@empresax.com.br", 21/4/1982, "Brasileiro", 9.9, "Design de Moda");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (6, 58881, "Davi", "Cavalceta", "Rua 12  (241)", "(85)10279-4278", "vi_Cavalceta329@empresax.com.br", 22/7/1979, "Brasileiro", 9.1, "Gastronomia (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (7, 21362, "Gabriel", "Cavaller", "Rua 2 (502)", "(46)60390-4675", "el_Cavaller322@empresax.com.br", 15/1/1986, "Brasileiro", 9.0, "Gestão Comercial (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (8, 27973, "Pedro", "Cavallo", "Rua 3 (460)", "(42)98345-3371", "ro_Cavallo658@empresax.com.br", 14/12/1969, "Brasileiro", 6.0, "Gestão da Qualidade (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (9, 42947, "Samuel", "Cavanillas", "Rua 4 (425)", "(70)87944-2101", "el_Cavanillas664@empresax.com.br", 11/5/1981, "Brasileiro", 4.8, "Gestão de Recursos Humanos (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (10, 63084, "Lorenzo", "Cavazos", "Rua 5 (392)", "(77)73564-8019", "zo_Cavazos206@empresax.com.br", 28/10/1964, "Brasileiro", 3.8, "Gestão Financeira (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (11, 29972, "Benjamin", "Cavero", "Rua 6 (378)", "(43)67575-1257", "in_Cavero545@empresax.com.br", 21/2/1961, "Brasileiro", 5.7, "Jornalismo");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (12, 8625, "Matheus", "Cazanga", "Rua 7 (343)", "(89)32608-8411", "us_Cazanga889@empresax.com.br", 29/12/1993, "Brasileiro", 8.9, "Logística (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (13, 62584, "Lucas", "Ceba", "Rua 8  (302)", "(10)68256-4481", "as_Ceba143@empresax.com.br", 12/8/1985, "Brasileiro", 1.7, "Marketing (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (14, 85092, "Benício", "Ceballos", "Rua 9  (275)", "(77)81261-4912", "io_Ceballos490@empresax.com.br", 26/11/1951, "Brasileiro", 4.4, "Processos Gerenciais (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (15, 39772, "Gael", "Ceciliano", "Rua A (1299)", "(36)12524-9440", "el_Ceciliano737@empresax.com.br", 15/10/1977, "Brasileiro", 8.9, "Publicidade e Propaganda");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (16, 84959, "Joaquim", "Cedeño", "Rua Alagoas  (252)", "(70)92977-7523", "im_Cedeño449@empresax.com.br", 1/11/1955, "Brasileiro", 2.6, "Rádio, TV e Internet");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (17, 60533, "Nicolas", "Cejudo", "Rua Amazonas (359)", "(13)97253-3303", "as_Cejudo422@empresax.com.br", 25/5/1979, "Brasileiro", 6.1, "Relações Internacionais");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (18, 87550, "Henrique", "Celada", "Rua B (1380)", "(91)38808-1037", "ue_Celada131@empresax.com.br", 26/11/1988, "Brasileiro", 5.7, "Relações Públicas");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (19, 65729, "Rafael", "Celedón", "Rua Bahia (360)", "(22)43808-3126", "el_Celedón147@empresax.com.br", 8/5/1993, "Brasileiro", 3.7, "Segurança no Trabalho");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (20, 79030, "Isaac", "Celís", "Rua Bela Vista (347)", "(68)70847-9681", "ac_Celís724@empresax.com.br", 20/10/1991, "Brasileiro", 6.7, "Biomedicina");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (21, 44706, "Guilherme", "Centella", "Rua Belo Horizonte  (281)", "(69)95848-3507", "me_Centella512@empresax.com.br", 20/9/1982, "Brasileiro", 8.5, "Ciências biológicas");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (22, 58721, "Murilo", "Centeno", "Rua Boa Vista  (251)", "(49)37562-7532", "lo_Centeno513@empresax.com.br", 25/9/1966, "Brasileiro", 3.7, "Ciências biológicas (licenciatura)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (23, 94588, "Lucca", "Cepeda", "Rua C (1239)", "(32)36196-4809", "ca_Cepeda880@empresax.com.br", 18/12/1986, "Brasileiro", 8.8, "Educação física (bacharelado)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (24, 56563, "Gustavo", "Cerceño", "Rua Castro Alves  (331)", "(47)95035-5139", "vo_Cerceño847@empresax.com.br", 3/6/1958, "Brasileiro", 1.2, "Educação física (licenciatura)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (25, 60763, "João Miguel", "Cerda", "Rua Ceara  (284)", "(20)91069-2797", "el_Cerda481@empresax.com.br", 3/11/1952, "Brasileiro", 2.4, "Enfermagem");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (26, 29077, "Noah", "Cerdas", "Rua Cinco (1217)", "(74)71605-9893", "ah_Cerdas991@empresax.com.br", 26/11/1980, "Brasileiro", 8.5, "Estética e cosmética (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (27, 73552, "Felipe", "Cerna", "Rua D (1026)", "(52)19030-2453", "pe_Cerna674@empresax.com.br", 30/12/1954, "Brasileiro", 4.8, "Farmácia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (28, 88529, "Anthony", "Cernas", "Rua Da Paz  (294)", "(98)97361-6385", "ny_Cernas472@empresax.com.br", 3/2/1980, "Brasileiro", 2.7, "Fisioterapia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (29, 74543, "Enzo", "Cerón", "Rua Das Flores  (279)", "(47)28822-2747", "zo_Cerón114@empresax.com.br", 9/3/1965, "Brasileiro", 4.9, "Gestão ambiental (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (30, 30006, "João Pedro", "Cerpas", "Rua Dez (769)", "(72)61456-6685", "ro_Cerpas441@empresax.com.br", 1/5/1977, "Brasileiro", 2.2, "Gestão hospitalar");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (31, 18239, "Pietro", "Cerros", "Rua Dezenove  (333)", "(88)28748-7187", "ro_Cerros102@empresax.com.br", 19/10/1954, "Brasileiro", 7.0, "Medicina veterinária");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (32, 55690, "Bryan", "Cervantes", "Rua Dezesseis (423)", "(51)20090-6271", "an_Cervantes524@empresax.com.br", 5/6/1986, "Brasileiro", 2.5, "Nutrição");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (33, 24753, "Daniel", "Cervilla", "Rua Dezessete (380)", "(77)40709-3310", "el_Cervilla951@empresax.com.br", 6/3/1991, "Brasileiro", 9.8, "Odontologia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (34, 18864, "Pedro Henrique", "Céspedes", "Rua Dezoito (357)", "(76)81933-6723", "ue_Céspedes538@empresax.com.br", 29/7/1994, "Brasileiro", 8.3, "Psicologia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (35, 88371, "Enzo Gabriel", "Cevallos", "Rua Dom Pedro II  (272)", "(45)38816-3668", "el_Cevallos260@empresax.com.br", 24/9/1957, "Brasileiro", 2.5, "Radiologia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (36, 15014, "Leonardo", "Cevedo", "Rua Doze (593)", "(76)63359-5219", "do_Cevedo771@empresax.com.br", 1/1/1960, "Brasileiro", 8.0, "Análise e desenvolvimento de sistemas (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (37, 33121, "Vicente", "Cevilla", "Rua Duque De Caxias  (329)", "(12)53421-4705", "te_Cevilla677@empresax.com.br", 25/8/1950, "Brasileiro", 3.3, "Arquitetura e urbanismo");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (38, 32122, "Valentim", "Chabrol", "Rua E (914)", "(90)21660-4644", "im_Chabrol928@empresax.com.br", 14/3/1970, "Brasileiro", 7.7, "Ciência da computação");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (39, 91286, "Eduardo", "Chacón", "Rua Espirito Santo  (298)", "(20)11021-5570", "do_Chacón312@empresax.com.br", 15/3/1968, "Brasileiro", 3.1, "Design de interiores (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (40, 8831, "Antônio", "Chamarro", "Rua F (819)", "(86)29347-6440", "io_Chamarro931@empresax.com.br", 4/10/1969, "Brasileiro", 2.2, "Design de produto (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (41, 42695, "Emanuel", "Chamorro", "Rua G (705)", "(60)92076-1660", "el_Chamorro597@empresax.com.br", 18/11/1995, "Brasileiro", 6.1, "Design gráfico (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (42, 79785, "Davi Lucca", "Chanquín", "Rua Goias  (287)", "(35)26106-9139", "ca_Chanquín314@empresax.com.br", 30/7/1967, "Brasileiro", 1.8, "Engenharia ambiental (bacharelado)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (43, 77496, "Bento", "Chanta", "Rua H (627)", "(63)10850-9541", "to_Chanta180@empresax.com.br", 25/8/1973, "Brasileiro", 2.9, "Engenharia civil");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (44, 71713, "João", "Chanto", "Rua I (507)", "(60)59029-1755", "ão_Chanto156@empresax.com.br", 15/4/1956, "Brasileiro", 7.3, "Engenharia de produção");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (45, 23294, "João Lucas", "Chavarría", "Rua J (453)", "(37)10179-1559", "as_Chavarría445@empresax.com.br", 8/9/1985, "Brasileiro", 3.0, "Engenharia elétrica");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (46, 71846, "Caleb", "Chavera", "Rua José Bonifácio  (276)", "(79)83878-9216", "eb_Chavera766@empresax.com.br", 25/12/1994, "Brasileiro", 3.9, "Engenharia mecânica");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (47, 96520, "Levi", "Chaverri", "Rua K  (290)", "(52)64196-4857", "vi_Chaverri858@empresax.com.br", 21/1/1960, "Brasileiro", 9.9, "Engenharia mecatrônica (bacharelado)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (48, 21183, "Vitor", "Chaves", "Rua L (374)", "(98)74101-4586", "or_Chaves351@empresax.com.br", 18/9/1976, "Brasileiro", 7.1, "Jogos digitais (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (49, 65230, "Enrico", "Chávez", "Rua M (347)", "(53)53772-3593", "co_Chávez796@empresax.com.br", 30/5/1995, "Brasileiro", 3.7, "Matemática (licenciatura)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (50, 54530, "Cauã", "Chavira", "Rua Maranhão  (255)", "(21)61422-3248", "uã_Chavira602@empresax.com.br", 9/10/1984, "Brasileiro", 7.7, "Química (bacharelado)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (51, 39454, "Caio", "Cheves", "Rua Mato Grosso  (275)", "(56)54456-6062", "io_Cheves629@empresax.com.br", 2/1/1952, "Brasileiro", 8.0, "Química (licenciatura)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (52, 34701, "Vinícius", "Chévez", "Rua Minas Gerais  (318)", "(52)33078-2947", "us_Chévez539@empresax.com.br", 15/1/1973, "Brasileiro", 5.2, "Redes de computadores (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (53, 90960, "Henry", "Chica", "Rua N  (310)", "(59)53358-8693", "ry_Chica631@empresax.com.br", 28/10/1976, "Brasileiro", 5.4, "Sistemas de informação (bacharelado)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (54, 52667, "João Gabriel", "Chicaiza", "Rua Nove (806)", "(24)81608-4046", "el_Chicaiza900@empresax.com.br", 19/9/1966, "Brasileiro", 1.7, "Tecnologia da informação (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (55, 19872, "Augusto", "Chicas", "Rua O  (239)", "(69)67300-9737", "to_Chicas281@empresax.com.br", 30/5/1951, "Brasileiro", 5.2, "Administração");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (56, 32477, "Ravi", "Chilquillo", "Rua Oito (931)", "(62)21284-5229", "vi_Chilquillo951@empresax.com.br", 4/2/1950, "Brasileiro", 5.0, "Ciências Contábeis");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (57, 46094, "Francisco", "Chinchilla", "Rua Onze (637)", "(18)13389-2008", "co_Chinchilla522@empresax.com.br", 3/12/1961, "Brasileiro", 3.1, "Ciências Econômicas");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (58, 35595, "Otávio", "Chinchillo", "Rua Pará  (264)", "(66)63978-5787", "io_Chinchillo782@empresax.com.br", 14/10/1982, "Brasileiro", 8.9, "Comércio Exterior (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (59, 91777, "Davi Lucas", "Chirino", "Rua Paraíba  (244)", "(60)62730-7700", "as_Chirino455@empresax.com.br", 18/8/1994, "Brasileiro", 1.7, "Design de Moda");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (60, 44531, "João Guilherme", "Chirinos", "Rua Parana (350)", "(69)86344-6153", "me_Chirinos591@empresax.com.br", 6/1/1960, "Brasileiro", 3.4, "Gastronomia (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (61, 38437, "Thomas", "Chocano", "Rua Pernambuco  (276)", "(96)85519-9151", "as_Chocano404@empresax.com.br", 19/9/1964, "Brasileiro", 3.0, "Gestão Comercial (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (62, 90681, "Ícaro", "Choza", "Rua Piauí  (276)", "(44)32015-1040", "ro_Choza862@empresax.com.br", 19/9/1994, "Brasileiro", 8.3, "Gestão da Qualidade (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (63, 96969, "Theodoro", "Cid", "Rua Primeiro de Maio  (272)", "(78)94682-9062", "ro_Cid849@empresax.com.br", 13/6/1970, "Brasileiro", 5.0, "Gestão de Recursos Humanos (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (64, 1657, "João Vitor", "Cifuentes", "Rua Principal (1308)", "(32)50752-3689", "or_Cifuentes115@empresax.com.br", 21/1/1953, "Brasileiro", 5.2, "Gestão Financeira (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (65, 83027, "Luiz Miguel", "Cintrón", "Rua Projetada  (329)", "(69)46843-6446", "el_Cintrón393@empresax.com.br", 26/5/1980, "Brasileiro", 3.7, "Jornalismo");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (66, 7662, "Yan", "Cisar", "Rua Quatorze (452)", "(63)64062-1929", "an_Cisar154@empresax.com.br", 2/3/1992, "Brasileiro", 4.1, "Logística (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (67, 97767, "Yuri Thiago", "Cisne", "Rua Quatro (1370)", "(51)82152-5358", "go_Cisne209@empresax.com.br", 29/12/1955, "Brasileiro", 5.8, "Marketing (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (68, 81527, "Arthur Miguel", "Cisnero", "Rua Quinze (456)", "(88)41557-7292", "el_Cisnero716@empresax.com.br", 23/8/1970, "Brasileiro", 3.6, "Processos Gerenciais (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (69, 61469, "Nathan", "Cisneros", "Rua Quinze De Novembro (394)", "(59)78410-5959", "an_Cisneros746@empresax.com.br", 21/1/1986, "Brasileiro", 2.6, "Publicidade e Propaganda");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (70, 17567, "Erick", "Cisternas", "Rua Rio De Janeiro  (289)", "(28)93900-1904", "ck_Cisternas116@empresax.com.br", 2/3/1960, "Brasileiro", 6.7, "Rádio, TV e Internet");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (71, 64938, "Breno", "Claro", "Rua Rui Barbosa  (320)", "(62)34247-2019", "no_Claro747@empresax.com.br", 22/9/1985, "Brasileiro", 5.8, "Relações Internacionais");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (72, 44657, "Luiz Felipe", "Cleves", "Rua Santa Catarina  (320)", "(74)62876-5572", "pe_Cleves591@empresax.com.br", 12/12/1969, "Brasileiro", 4.8, "Relações Públicas");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (73, 66774, "Anthony Gabriel", "Cobaleda", "Rua Santa Luzia (343)", "(12)83781-8071", "el_Cobaleda341@empresax.com.br", 16/2/1955, "Brasileiro", 7.4, "Segurança no Trabalho");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (74, 35845, "Martin", "Coe", "Rua Santa Maria  (275)", "(64)46764-7233", "in_Coe494@empresax.com.br", 14/11/1974, "Brasileiro", 3.7, "Biomedicina");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (75, 12495, "Matteo", "Coello", "Rua Santa Rita  (239)", "(95)45687-6756", "eo_Coello165@empresax.com.br", 28/9/1968, "Brasileiro", 6.3, "Ciências biológicas");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (76, 12804, "Oliver", "Coen", "Rua Santo Antônio (554)", "(16)74568-7122", "er_Coen290@empresax.com.br", 23/4/1992, "Brasileiro", 4.0, "Ciências biológicas (licenciatura)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (77, 61073, "Arthur Gabriel", "Cohen", "Rua Santos Dumont  (306)", "(34)44919-7777", "el_Cohen535@empresax.com.br", 9/12/1986, "Brasileiro", 5.2, "Educação física (bacharelado)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (78, 16319, "Ryan", "Coles", "Rua Sao Francisco (442)", "(31)73385-2578", "an_Coles340@empresax.com.br", 21/9/1972, "Brasileiro", 5.0, "Educação física (licenciatura)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (79, 15200, "Raul", "Colina", "Rua Sao João (455)", "(16)54746-7312", "ul_Colina821@empresax.com.br", 1/2/1954, "Brasileiro", 1.9, "Enfermagem");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (80, 76610, "Luan", "Colindres", "Rua Sao Jorge  (341)", "(33)34678-2939", "an_Colindres643@empresax.com.br", 15/2/1985, "Brasileiro", 9.6, "Estética e cosmética (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (81, 46466, "Tomás", "Collado", "Rua São José (638)", "(89)74267-6395", "ás_Collado545@empresax.com.br", 18/10/1963, "Brasileiro", 8.4, "Farmácia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (82, 32261, "Mathias", "Collina", "Rua Sao Luiz  (249)", "(19)70581-5648", "as_Collina697@empresax.com.br", 23/1/1975, "Brasileiro", 3.1, "Fisioterapia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (83, 23974, "Davi Luiz", "Colom", "Rua São Paulo (619)", "(99)65644-6427", "iz_Colom378@empresax.com.br", 22/6/1964, "Brasileiro", 9.0, "Gestão ambiental (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (84, 96949, "Pedro Lucas", "Coloma", "Rua Sao Pedro (458)", "(59)93335-2638", "as_Coloma582@empresax.com.br", 11/10/1986, "Brasileiro", 3.9, "Gestão hospitalar");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (85, 26060, "Derick", "Colombo", "Rua Sao Sebastiao (357)", "(85)52783-8829", "ck_Colombo986@empresax.com.br", 27/6/1956, "Brasileiro", 5.2, "Medicina veterinária");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (86, 67735, "Vitor Hugo", "Colomer", "Rua Seis (1077)", "(65)17888-8295", "go_Colomer493@empresax.com.br", 11/10/1962, "Brasileiro", 2.5, "Nutrição");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (87, 21007, "Kauê", "Concepción", "Rua Sergipe  (279)", "(94)99131-6901", "uê_Concepción538@empresax.com.br", 2/1/1986, "Brasileiro", 6.7, "Odontologia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (88, 36785, "Lucas Gabriel", "Concha", "Rua Sete (1011)", "(31)29040-3609", "el_Concha512@empresax.com.br", 23/3/1975, "Brasileiro", 8.9, "Psicologia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (89, 43296, "Arthur Henrique", "Conde", "Rua Sete de Setembro (428)", "(71)32370-8332", "ue_Conde577@empresax.com.br", 20/3/1950, "Brasileiro", 8.4, "Radiologia");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (90, 38964, "Rodrigo", "Condega", "Rua Tiradentes (384)", "(30)82865-3960", "go_Condega952@empresax.com.br", 2/1/1969, "Brasileiro", 5.9, "Análise e desenvolvimento de sistemas (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (91, 41782, "Bruno", "Condes", "Rua Três (1513)", "(27)63380-1947", "no_Condes166@empresax.com.br", 17/1/1962, "Brasileiro", 9.2, "Arquitetura e urbanismo");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (92, 73327, "Davi Miguel", "Conedo", "Rua Treze (585)", "(20)50127-2975", "el_Conedo708@empresax.com.br", 14/3/1966, "Brasileiro", 7.1, "Ciência da computação");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (93, 81122, "Yago", "Conejo", "Rua Treze De Maio  (294)", "(10)93915-1997", "go_Conejo907@empresax.com.br", 23/8/1951, "Brasileiro", 1.4, "Design de interiores (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (94, 39398, "José", "Congosto", "Rua Um   (1444)", "(61)13017-2745", "sé_Congosto572@empresax.com.br", 25/6/1976, "Brasileiro", 8.1, "Design de produto (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (95, 66093, "Pedro Miguel", "Conte", "Rua Vinte (362)", "(72)28939-3526", "el_Conte444@empresax.com.br", 12/7/1995, "Brasileiro", 1.9, "Design gráfico (tecnológico)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (96, 6341, "Luiz Henrique", "Contreras", "Rua Vinte e Dois  (297)", "(15)25169-7799", "ue_Contreras655@empresax.com.br", 19/1/1978, "Brasileiro", 8.1, "Engenharia ambiental (bacharelado)");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (97, 4215, "Hugo", "Corales", "Rua Vinte e Quatro  (249)", "(26)42471-8025", "go_Corales820@empresax.com.br", 29/2/1992, "Brasileiro", 6.0, "Engenharia civil");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (98, 36705, "Otto", "Corao", "Rua Vinte e Três  (276)", "(90)80852-8267", "to_Corao777@empresax.com.br", 14/6/1981, "Brasileiro", 5.2, "Engenharia de produção");
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral, cursando) VALUES (99, 57968, "Josué", "Cordeiro", "Rua Vinte e Um  298", "(55)22565-1943", "ué_Cordeiro964@empresax.com.br", 12/9/1987, "Brasileiro", 1.9, "Engenharia elétrica");

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
ON e.cursando = c.descrição;