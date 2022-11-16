CREATE TABLE pokedex;

CREATE TABLE regiao (
	idregiao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regiao CHAR(2) NOT NULL,
    FOREIGN KEY(idpokemon) REFERENCES pokemon(idpokemon)
);

CREATE TABLE evolucao (
	idnome INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    estagioum VARCHAR(45) NOT NULL,
    estagiodois VARCHAR(45) NOT NULL,
    estagiotres VARCHAR(45) NOT NULL,
    FOREIGN KEY(idpokemon) REFERENCES pokemon(idpokemon)
);

CREATE TABLE pokemon (
	idpokemon INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    tipopokemon VARCHAR(45) NOT NULL,
    peso DOUBLE NOT NULL,
    altura DOUBLE NOT NULL
);

CREATE TABLE vantagempokemon (
	idvantagem INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipopokemon VARCHAR(45) NOT NULL,
    vantagemdotipo VARCH nAR(45) NOT NULL,
    FOREIGN KEY(idpokemon) REFERENCES pokemon(idpokemon)
);

CREATE TABLE fraquezapokemon (
	idfraqueza INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipopokemon VARCHAR(45) NOT NULL,
    fraquezadotipo VARCHAR(45) NOT NULL,
    FOREIGN KEY(idpokemon) REFERENCES pokemon(idpokemon)
);
