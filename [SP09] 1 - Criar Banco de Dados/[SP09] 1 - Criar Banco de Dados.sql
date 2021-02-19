CREATE DATABASE IF NOT EXISTS `escola`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS professores (
	id INT,
    matricula INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    endereço VARCHAR(500),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nasicmento DATE,
    nacionalidade VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS estudantes (
	id INT,
    matricula INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    endereço VARCHAR(500),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nasicmento DATE,
    nacionalidade VARCHAR(50),
    media_geral FLOAT
);

CREATE TABLE IF NOT EXISTS cursos (
	id INT,
    codigo INT,
    nome VARCHAR(100),
    EAD BOOLEAN,
    presencial BOOLEAN,
    professor_responsável VARCHAR(100),
    número_maximo_alunos_simultâneo INT
);

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

INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (1, 43578, "Miguel", "Castillo", "Rua Dois (1534)", "(82)74632-1414", "el_Castillo350@empresax.com.br", 9/4/1977, "Brasileiro", 6.3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (2, 27724, "Arthur", "Castro", "Avenida Brasil (532)", "(29)17520-3647", "ur_Castro748@empresax.com.br", 7/4/1986, "Brasileiro", 3.6);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (3, 73356, "Heitor", "Catania", "Rua 1 (476)", "(98)77594-2181", "or_Catania372@empresax.com.br", 29/11/1983, "Brasileiro", 5.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (4, 95749, "Bernardo", "Cateres", "Rua 10  (281)", "(41)56862-7133", "do_Cateres703@empresax.com.br", 30/10/1961, "Brasileiro", 3.5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (5, 29288, "Théo", "Catón", "Rua 11  (237)", "(51)26475-3182", "éo_Catón236@empresax.com.br", 20/10/1956, "Brasileiro", 9.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (6, 99773, "Davi", "Cavalceta", "Rua 12  (241)", "(48)79835-3109", "vi_Cavalceta654@empresax.com.br", 14/6/1951, "Brasileiro", 9.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (7, 5914, "Gabriel", "Cavaller", "Rua 2 (502)", "(44)92075-1916", "el_Cavaller272@empresax.com.br", 1/6/1986, "Brasileiro", 9.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (8, 22616, "Pedro", "Cavallo", "Rua 3 (460)", "(34)96284-5225", "ro_Cavallo870@empresax.com.br", 7/7/1972, "Brasileiro", 6.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (9, 80648, "Samuel", "Cavanillas", "Rua 4 (425)", "(67)39035-6404", "el_Cavanillas141@empresax.com.br", 1/4/1971, "Brasileiro", 4.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (10, 4236, "Lorenzo", "Cavazos", "Rua 5 (392)", "(81)14172-3360", "zo_Cavazos673@empresax.com.br", 6/6/1983, "Brasileiro", 3.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (11, 45658, "Benjamin", "Cavero", "Rua 6 (378)", "(78)98855-9394", "in_Cavero303@empresax.com.br", 10/7/1984, "Brasileiro", 5.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (12, 26936, "Matheus", "Cazanga", "Rua 7 (343)", "(73)45492-1559", "us_Cazanga747@empresax.com.br", 8/3/1965, "Brasileiro", 8.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (13, 96091, "Lucas", "Ceba", "Rua 8  (302)", "(31)43956-7152", "as_Ceba784@empresax.com.br", 8/6/1955, "Brasileiro", 1.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (14, 33214, "Benício", "Ceballos", "Rua 9  (275)", "(76)53916-7626", "io_Ceballos357@empresax.com.br", 19/4/1959, "Brasileiro", 4.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (15, 40326, "Gael", "Ceciliano", "Rua A (1299)", "(34)82182-2467", "el_Ceciliano707@empresax.com.br", 25/1/1995, "Brasileiro", 8.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (16, 14608, "Joaquim", "Cedeño", "Rua Alagoas  (252)", "(78)53630-1257", "im_Cedeño526@empresax.com.br", 1/7/1954, "Brasileiro", 2.6);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (17, 93865, "Nicolas", "Cejudo", "Rua Amazonas (359)", "(51)30939-8762", "as_Cejudo186@empresax.com.br", 27/3/1974, "Brasileiro", 6.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (18, 84835, "Henrique", "Celada", "Rua B (1380)", "(48)91028-5545", "ue_Celada688@empresax.com.br", 9/3/1976, "Brasileiro", 5.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (19, 73416, "Rafael", "Celedón", "Rua Bahia (360)", "(20)10789-7217", "el_Celedón331@empresax.com.br", 10/1/1967, "Brasileiro", 3.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (20, 48911, "Isaac", "Celís", "Rua Bela Vista (347)", "(27)82544-8932", "ac_Celís824@empresax.com.br", 29/11/1961, "Brasileiro", 6.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (21, 66672, "Guilherme", "Centella", "Rua Belo Horizonte  (281)", "(85)59777-1464", "me_Centella904@empresax.com.br", 17/7/1970, "Brasileiro", 8.5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (22, 74149, "Murilo", "Centeno", "Rua Boa Vista  (251)", "(83)44885-8081", "lo_Centeno531@empresax.com.br", 26/9/1959, "Brasileiro", 3.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (23, 73364, "Lucca", "Cepeda", "Rua C (1239)", "(78)83304-6240", "ca_Cepeda329@empresax.com.br", 2/12/1986, "Brasileiro", 8.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (24, 8900, "Gustavo", "Cerceño", "Rua Castro Alves  (331)", "(32)27785-6229", "vo_Cerceño455@empresax.com.br", 2/1/1989, "Brasileiro", 1.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (25, 93888, "João Miguel", "Cerda", "Rua Ceara  (284)", "(18)44982-5255", "el_Cerda835@empresax.com.br", 9/5/1956, "Brasileiro", 2.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (26, 59974, "Noah", "Cerdas", "Rua Cinco (1217)", "(76)63780-3292", "ah_Cerdas783@empresax.com.br", 18/2/1964, "Brasileiro", 8.5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (27, 72355, "Felipe", "Cerna", "Rua D (1026)", "(42)67286-2001", "pe_Cerna539@empresax.com.br", 14/2/1993, "Brasileiro", 4.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (28, 21551, "Anthony", "Cernas", "Rua Da Paz  (294)", "(83)84738-3038", "ny_Cernas132@empresax.com.br", 13/5/1959, "Brasileiro", 2.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (29, 4507, "Enzo", "Cerón", "Rua Das Flores  (279)", "(63)43340-5426", "zo_Cerón562@empresax.com.br", 8/9/1955, "Brasileiro", 4.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (30, 73443, "João Pedro", "Cerpas", "Rua Dez (769)", "(89)59032-2243", "ro_Cerpas635@empresax.com.br", 5/1/1988, "Brasileiro", 2.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (31, 39918, "Pietro", "Cerros", "Rua Dezenove  (333)", "(22)94952-4610", "ro_Cerros925@empresax.com.br", 9/10/1961, "Brasileiro", 7.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (32, 84318, "Bryan", "Cervantes", "Rua Dezesseis (423)", "(76)19073-2189", "an_Cervantes535@empresax.com.br", 8/11/1954, "Brasileiro", 2.5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (33, 65712, "Daniel", "Cervilla", "Rua Dezessete (380)", "(80)58895-8101", "el_Cervilla200@empresax.com.br", 15/3/1994, "Brasileiro", 9.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (34, 81570, "Pedro Henrique", "Céspedes", "Rua Dezoito (357)", "(39)20427-2542", "ue_Céspedes706@empresax.com.br", 24/5/1982, "Brasileiro", 8.3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (35, 89927, "Enzo Gabriel", "Cevallos", "Rua Dom Pedro II  (272)", "(14)56846-3929", "el_Cevallos927@empresax.com.br", 29/2/1989, "Brasileiro", 2.5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (36, 62811, "Leonardo", "Cevedo", "Rua Doze (593)", "(23)88845-6373", "do_Cevedo250@empresax.com.br", 8/7/1966, "Brasileiro", 8.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (37, 17383, "Vicente", "Cevilla", "Rua Duque De Caxias  (329)", "(30)43357-7577", "te_Cevilla558@empresax.com.br", 4/5/1975, "Brasileiro", 3.3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (38, 89446, "Valentim", "Chabrol", "Rua E (914)", "(64)95028-2987", "im_Chabrol296@empresax.com.br", 7/3/1959, "Brasileiro", 7.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (39, 23000, "Eduardo", "Chacón", "Rua Espirito Santo  (298)", "(46)31091-8927", "do_Chacón869@empresax.com.br", 2/3/1952, "Brasileiro", 3.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (40, 82457, "Antônio", "Chamarro", "Rua F (819)", "(79)95194-7685", "io_Chamarro695@empresax.com.br", 12/10/1981, "Brasileiro", 2.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (41, 32877, "Emanuel", "Chamorro", "Rua G (705)", "(85)52037-3802", "el_Chamorro249@empresax.com.br", 23/12/1987, "Brasileiro", 6.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (42, 2144, "Davi Lucca", "Chanquín", "Rua Goias  (287)", "(92)37222-9953", "ca_Chanquín628@empresax.com.br", 29/1/1974, "Brasileiro", 1.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (43, 51961, "Bento", "Chanta", "Rua H (627)", "(46)66840-2742", "to_Chanta981@empresax.com.br", 8/9/1988, "Brasileiro", 2.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (44, 33268, "João", "Chanto", "Rua I (507)", "(89)79900-9933", "ão_Chanto583@empresax.com.br", 25/8/1957, "Brasileiro", 7.3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (45, 2179, "João Lucas", "Chavarría", "Rua J (453)", "(32)89919-6811", "as_Chavarría358@empresax.com.br", 6/10/1993, "Brasileiro", 3.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (46, 6186, "Caleb", "Chavera", "Rua José Bonifácio  (276)", "(38)27397-9063", "eb_Chavera529@empresax.com.br", 22/9/1991, "Brasileiro", 3.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (47, 85884, "Levi", "Chaverri", "Rua K  (290)", "(14)33408-9532", "vi_Chaverri677@empresax.com.br", 17/11/1983, "Brasileiro", 9.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (48, 59023, "Vitor", "Chaves", "Rua L (374)", "(17)20702-8281", "or_Chaves529@empresax.com.br", 1/2/1958, "Brasileiro", 7.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (49, 8822, "Enrico", "Chávez", "Rua M (347)", "(36)77961-3209", "co_Chávez283@empresax.com.br", 8/5/1973, "Brasileiro", 3.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (50, 9271, "Cauã", "Chavira", "Rua Maranhão  (255)", "(47)17316-3285", "uã_Chavira898@empresax.com.br", 7/1/1978, "Brasileiro", 7.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (51, 37324, "Caio", "Cheves", "Rua Mato Grosso  (275)", "(55)83130-1560", "io_Cheves501@empresax.com.br", 2/11/1950, "Brasileiro", 8.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (52, 22443, "Vinícius", "Chévez", "Rua Minas Gerais  (318)", "(65)57522-9208", "us_Chévez920@empresax.com.br", 4/6/1971, "Brasileiro", 5.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (53, 17289, "Henry", "Chica", "Rua N  (310)", "(63)31664-7876", "ry_Chica209@empresax.com.br", 17/9/1974, "Brasileiro", 5.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (54, 7019, "João Gabriel", "Chicaiza", "Rua Nove (806)", "(40)73022-7589", "el_Chicaiza872@empresax.com.br", 19/1/1956, "Brasileiro", 1.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (55, 12069, "Augusto", "Chicas", "Rua O  (239)", "(33)81907-2579", "to_Chicas685@empresax.com.br", 29/8/1987, "Brasileiro", 5.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (56, 26785, "Ravi", "Chilquillo", "Rua Oito (931)", "(79)99226-6603", "vi_Chilquillo557@empresax.com.br", 20/9/1989, "Brasileiro", 5.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (57, 8615, "Francisco", "Chinchilla", "Rua Onze (637)", "(28)92630-6975", "co_Chinchilla329@empresax.com.br", 1/9/1953, "Brasileiro", 3.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (58, 46131, "Otávio", "Chinchillo", "Rua Pará  (264)", "(88)62468-8288", "io_Chinchillo145@empresax.com.br", 6/6/1986, "Brasileiro", 8.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (59, 62393, "Davi Lucas", "Chirino", "Rua Paraíba  (244)", "(99)88021-5985", "as_Chirino201@empresax.com.br", 18/4/1981, "Brasileiro", 1.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (60, 14497, "João Guilherme", "Chirinos", "Rua Parana (350)", "(89)99825-2464", "me_Chirinos181@empresax.com.br", 4/7/1983, "Brasileiro", 3.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (61, 66580, "Thomas", "Chocano", "Rua Pernambuco  (276)", "(60)71791-8466", "as_Chocano178@empresax.com.br", 2/4/1969, "Brasileiro", 3.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (62, 24951, "Ícaro", "Choza", "Rua Piauí  (276)", "(53)72650-3311", "ro_Choza648@empresax.com.br", 1/4/1957, "Brasileiro", 8.3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (63, 39400, "Theodoro", "Cid", "Rua Primeiro de Maio  (272)", "(66)75919-2463", "ro_Cid816@empresax.com.br", 16/1/1964, "Brasileiro", 5.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (64, 19961, "João Vitor", "Cifuentes", "Rua Principal (1308)", "(80)91962-1822", "or_Cifuentes420@empresax.com.br", 22/3/1964, "Brasileiro", 5.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (65, 51260, "Luiz Miguel", "Cintrón", "Rua Projetada  (329)", "(82)13320-7215", "el_Cintrón269@empresax.com.br", 20/10/1956, "Brasileiro", 3.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (66, 93276, "Yan", "Cisar", "Rua Quatorze (452)", "(33)33954-9854", "an_Cisar272@empresax.com.br", 5/10/1979, "Brasileiro", 4.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (67, 78738, "Yuri Thiago", "Cisne", "Rua Quatro (1370)", "(69)77599-3194", "go_Cisne827@empresax.com.br", 8/12/1950, "Brasileiro", 5.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (68, 32855, "Arthur Miguel", "Cisnero", "Rua Quinze (456)", "(17)99439-7028", "el_Cisnero521@empresax.com.br", 17/4/1950, "Brasileiro", 3.6);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (69, 87949, "Nathan", "Cisneros", "Rua Quinze De Novembro (394)", "(95)80377-2211", "an_Cisneros821@empresax.com.br", 8/6/1973, "Brasileiro", 2.6);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (70, 89407, "Erick", "Cisternas", "Rua Rio De Janeiro  (289)", "(96)98713-1421", "ck_Cisternas655@empresax.com.br", 24/9/1992, "Brasileiro", 6.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (71, 65758, "Breno", "Claro", "Rua Rui Barbosa  (320)", "(30)44348-4609", "no_Claro659@empresax.com.br", 22/2/1977, "Brasileiro", 5.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (72, 48600, "Luiz Felipe", "Cleves", "Rua Santa Catarina  (320)", "(70)47258-1107", "pe_Cleves779@empresax.com.br", 21/11/1953, "Brasileiro", 4.8);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (73, 61372, "Anthony Gabriel", "Cobaleda", "Rua Santa Luzia (343)", "(88)15726-3372", "el_Cobaleda267@empresax.com.br", 20/11/1992, "Brasileiro", 7.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (74, 56059, "Martin", "Coe", "Rua Santa Maria  (275)", "(41)10933-5135", "in_Coe394@empresax.com.br", 28/6/1964, "Brasileiro", 3.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (75, 81941, "Matteo", "Coello", "Rua Santa Rita  (239)", "(25)31947-7142", "eo_Coello795@empresax.com.br", 27/6/1980, "Brasileiro", 6.3);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (76, 45594, "Oliver", "Coen", "Rua Santo Antônio (554)", "(69)45638-6238", "er_Coen452@empresax.com.br", 14/3/1954, "Brasileiro", 4.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (77, 24835, "Arthur Gabriel", "Cohen", "Rua Santos Dumont  (306)", "(75)31930-4930", "el_Cohen851@empresax.com.br", 2/12/1971, "Brasileiro", 5.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (78, 8584, "Ryan", "Coles", "Rua Sao Francisco (442)", "(67)67521-1227", "an_Coles964@empresax.com.br", 23/11/1957, "Brasileiro", 5.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (79, 22937, "Raul", "Colina", "Rua Sao João (455)", "(31)77092-2396", "ul_Colina797@empresax.com.br", 28/7/1993, "Brasileiro", 1.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (80, 77946, "Luan", "Colindres", "Rua Sao Jorge  (341)", "(95)21075-4985", "an_Colindres285@empresax.com.br", 10/1/1991, "Brasileiro", 9.6);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (81, 24838, "Tomás", "Collado", "Rua São José (638)", "(91)54890-4355", "ás_Collado552@empresax.com.br", 30/12/1953, "Brasileiro", 8.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (82, 3977, "Mathias", "Collina", "Rua Sao Luiz  (249)", "(74)89438-6833", "as_Collina690@empresax.com.br", 4/12/1972, "Brasileiro", 3.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (83, 13754, "Davi Luiz", "Colom", "Rua São Paulo (619)", "(71)71270-5202", "iz_Colom659@empresax.com.br", 10/7/1989, "Brasileiro", 9.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (84, 65769, "Pedro Lucas", "Coloma", "Rua Sao Pedro (458)", "(58)37681-9146", "as_Coloma746@empresax.com.br", 17/10/1950, "Brasileiro", 3.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (85, 54007, "Derick", "Colombo", "Rua Sao Sebastiao (357)", "(75)56358-2048", "ck_Colombo167@empresax.com.br", 20/11/1992, "Brasileiro", 5.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (86, 24991, "Vitor Hugo", "Colomer", "Rua Seis (1077)", "(47)11147-8723", "go_Colomer399@empresax.com.br", 9/8/1953, "Brasileiro", 2.5);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (87, 93295, "Kauê", "Concepción", "Rua Sergipe  (279)", "(82)13066-9780", "uê_Concepción813@empresax.com.br", 3/5/1995, "Brasileiro", 6.7);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (88, 17970, "Lucas Gabriel", "Concha", "Rua Sete (1011)", "(48)27901-6147", "el_Concha855@empresax.com.br", 1/9/1991, "Brasileiro", 8.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (89, 80126, "Arthur Henrique", "Conde", "Rua Sete de Setembro (428)", "(55)99451-9263", "ue_Conde729@empresax.com.br", 24/12/1961, "Brasileiro", 8.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (90, 98229, "Rodrigo", "Condega", "Rua Tiradentes (384)", "(82)30032-2760", "go_Condega481@empresax.com.br", 26/2/1993, "Brasileiro", 5.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (91, 2114, "Bruno", "Condes", "Rua Três (1513)", "(40)88318-9585", "no_Condes646@empresax.com.br", 26/1/1976, "Brasileiro", 9.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (92, 49365, "Davi Miguel", "Conedo", "Rua Treze (585)", "(90)21638-7592", "el_Conedo372@empresax.com.br", 22/7/1956, "Brasileiro", 7.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (93, 23464, "Yago", "Conejo", "Rua Treze De Maio  (294)", "(76)34411-9214", "go_Conejo542@empresax.com.br", 23/12/1984, "Brasileiro", 1.4);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (94, 82935, "José", "Congosto", "Rua Um   (1444)", "(79)75930-3438", "sé_Congosto989@empresax.com.br", 21/7/1983, "Brasileiro", 8.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (95, 54125, "Pedro Miguel", "Conte", "Rua Vinte (362)", "(14)95776-8759", "el_Conte296@empresax.com.br", 26/9/1961, "Brasileiro", 1.9);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (96, 88099, "Luiz Henrique", "Contreras", "Rua Vinte e Dois  (297)", "(73)35244-9885", "ue_Contreras153@empresax.com.br", 15/4/1978, "Brasileiro", 8.1);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (97, 71160, "Hugo", "Corales", "Rua Vinte e Quatro  (249)", "(45)61522-2178", "go_Corales633@empresax.com.br", 21/9/1959, "Brasileiro", 6.0);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (98, 4903, "Otto", "Corao", "Rua Vinte e Três  (276)", "(90)18545-4514", "to_Corao365@empresax.com.br", 21/9/1992, "Brasileiro", 5.2);
INSERT INTO estudantes (id, matricula, nome, sobrenome, endereço, telefone, email, data_nasicmento, nacionalidade, media_geral) VALUES (99, 85380, "Josué", "Cordeiro", "Rua Vinte e Um  298", "(79)28308-2766", "ué_Cordeiro109@empresax.com.br", 9/3/1975, "Brasileiro", 1.9);

INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (1, 31580, "Administração", false, true, "Anthony Gabriel Cobaleda", 24);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (2, 11990, "Ciências Contábeis", true, false, "Martin Coe", 29);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (3, 51978, "Ciências Econômicas", false, true, "Matteo Coello", 22);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (4, 81902, "Comércio Exterior (tecnológico)", false, true, "Oliver Coen", 27);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (5, 58818, "Design de Moda", false, true, "Arthur Gabriel Cohen", 42);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (6, 65905, "Gastronomia (tecnológico)", true, false, "Ryan Coles", 46);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (7, 58390, "Gestão Comercial (tecnológico)", true, false, "Raul Colina", 37);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (8, 5587, "Gestão da Qualidade (tecnológico)", true, false, "Luan Colindres", 39);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (9, 51914, "Gestão de Recursos Humanos (tecnológico)", true, false, "Tomás Collado", 14);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (10, 63294, "Gestão Financeira (tecnológico)", false, true, "Mathias Collina", 49);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (11, 52869, "Jornalismo", false, true, "Davi Luiz Colom", 13);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (12, 40916, "Logística (tecnológico)", true, false, "Pedro Lucas Coloma", 13);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (13, 9282, "Marketing (tecnológico)", false, true, "Derick Colombo", 49);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (14, 33820, "Processos Gerenciais (tecnológico)", true, false, "Anthony Gabriel Cobaleda", 41);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (15, 18940, "Publicidade e Propaganda", true, false, "Martin Coe", 14);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (16, 95002, "Rádio, TV e Internet", false, true, "Matteo Coello", 50);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (17, 90445, "Relações Internacionais", false, true, "Oliver Coen", 26);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (18, 64832, "Relações Públicas", false, true, "Arthur Gabriel Cohen", 23);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (19, 42139, "Segurança no Trabalho", true, false, "Ryan Coles", 36);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (20, 70620, "Biomedicina", true, false, "Raul Colina", 44);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (21, 50786, "Ciências biológicas", false, true, "Luan Colindres", 33);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (22, 9360, "Ciências biológicas (licenciatura)", true, false, "Tomás Collado", 27);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (23, 53546, "Educação física (bacharelado)", false, true, "Mathias Collina", 21);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (24, 94261, "Educação física (licenciatura)", true, false, "Davi Luiz Colom", 42);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (25, 57471, "Enfermagem", false, true, "Pedro Lucas Coloma", 42);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (26, 35563, "Estética e cosmética (tecnológico)", true, false, "Derick Colombo", 43);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (27, 28997, "Farmácia", false, true, "Anthony Gabriel Cobaleda", 47);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (28, 39518, "Fisioterapia", true, false, "Martin Coe", 13);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (29, 30036, "Gestão ambiental (tecnológico)", false, true, "Matteo Coello", 49);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (30, 4409, "Gestão hospitalar", true, false, "Oliver Coen", 11);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (31, 5607, "Medicina veterinária", true, false, "Arthur Gabriel Cohen", 16);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (32, 20350, "Nutrição", true, false, "Ryan Coles", 27);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (33, 46245, "Odontologia", true, false, "Raul Colina", 11);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (34, 84972, "Psicologia", true, false, "Luan Colindres", 25);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (35, 80869, "Radiologia", false, true, "Tomás Collado", 40);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (36, 93944, "Análise e desenvolvimento de sistemas (tecnológico)", false, true, "Mathias Collina", 40);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (37, 27664, "Arquitetura e urbanismo", true, false, "Davi Luiz Colom", 24);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (38, 8767, "Ciência da computação", true, false, "Pedro Lucas Coloma", 29);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (39, 96862, "Design de interiores (tecnológico)", true, false, "Derick Colombo", 10);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (40, 36057, "Design de produto (tecnológico)", false, true, "Anthony Gabriel Cobaleda", 43);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (41, 2344, "Design gráfico (tecnológico)", false, true, "Martin Coe", 31);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (42, 75545, "Engenharia ambiental (bacharelado)", true, false, "Matteo Coello", 40);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (43, 26200, "Engenharia civil", false, true, "Oliver Coen", 32);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (44, 87721, "Engenharia de produção", true, false, "Arthur Gabriel Cohen", 21);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (45, 38887, "Engenharia elétrica", false, true, "Ryan Coles", 29);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (46, 41942, "Engenharia mecânica", true, false, "Raul Colina", 24);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (47, 69747, "Engenharia mecatrônica (bacharelado)", true, false, "Luan Colindres", 42);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (48, 53636, "Jogos digitais (tecnológico)", true, false, "Tomás Collado", 48);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (49, 60530, "Matemática (licenciatura)", true, false, "Mathias Collina", 44);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (50, 80239, "Química (bacharelado)", true, false, "Davi Luiz Colom", 50);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (51, 22098, "Química (licenciatura)", false, true, "Pedro Lucas Coloma", 46);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (52, 95207, "Redes de computadores (tecnológico)", false, true, "Derick Colombo", 23);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (53, 39674, "Sistemas de informação (bacharelado)", true, false, "Anthony Gabriel Cobaleda", 19);
INSERT INTO cursos (id, codigo, nome, EAD, presencial, professor_responsável, número_maximo_alunos_simultâneo) VALUES (54, 27675, "Tecnologia da informação (tecnológico)", false, true, "Martin Coe", 25);

SELECT * FROM cursos WHERE número_maximo_alunos_simultâneo > 30 AND presencial = 1; 

SET SQL_SAFE_UPDATES=0;
UPDATE estudantes SET media_geral = 10 WHERE id = 98;
SELECT * FROM estudantes WHERE id = 98; 

DELETE FROM cursos WHERE nome = "Administração";
SELECT * FROM cursos;

SELECT * FROM professores WHERE nacionalidade = "Brasileiro";  

SELECT * FROM estudantes WHERE nome LIKE "J%";  