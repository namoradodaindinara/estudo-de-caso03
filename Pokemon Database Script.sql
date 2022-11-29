drop database pokedex;
CREATE DATABASE pokedex;
USE pokedex;

CREATE TABLE regiao (
	idregiao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regiao CHAR(2) NOT NULL
);

CREATE TABLE evolucao (
	idnome INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    estagioum VARCHAR(45) NOT NULL,
    estagiodois VARCHAR(45),
    estagiotres VARCHAR(45)
);

CREATE TABLE vantagempokemon (
	idvantagem INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipopokemon VARCHAR(45) NOT NULL,
    vantagemdotipo VARCHAR(45) 
);

CREATE TABLE fraquezapokemon (
	idfraqueza INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipopokemon VARCHAR(45) NOT NULL,
    fraquezadotipo VARCHAR(45) NOT NULL
);

CREATE TABLE pokemon (
	idpokemon INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    tipopokemon VARCHAR(45) NOT NULL,
    peso DOUBLE NOT NULL,
    altura DOUBLE NOT NULL,
    idvantagem INT,
    idfraqueza INT,
    idnome INT,
    idregiao INT,
    FOREIGN KEY(idvantagem) REFERENCES vantagempokemon(idvantagem),
    FOREIGN KEY(idfraqueza) REFERENCES fraquezapokemon(idfraqueza),
    FOREIGN KEY(idnome) REFERENCES evolucao(idnome),
    FOREIGN KEY(idregiao) REFERENCES regiao(idregiao)
);

 -- INSERTS regiao

INSERT INTO regiao (regiao) VALUES ('US');
INSERT INTO regiao (regiao) VALUES ('ES');
INSERT INTO regiao (regiao) VALUES ('CN');
INSERT INTO regiao (regiao) VALUES ('BR');
INSERT INTO regiao (regiao) VALUES ('PT');
INSERT INTO regiao (regiao) VALUES ('LK');
INSERT INTO regiao (regiao) VALUES ('UK');
INSERT INTO regiao (regiao) VALUES ('ID');
INSERT INTO regiao (regiao) VALUES ('PE');
INSERT INTO regiao (regiao) VALUES ('BO');

 -- INSERTS evolucao

INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Charmander', 'Charmeleon', 'Charizard');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Bulbassaur', 'Ivyssaur', 'Venossaur');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Squirtle', 'Wartortle', 'Blastoise');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Dratini', 'Dragonair', 'Dragonite');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Rhyhorn', 'Rhydon', 'hyperior');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Pidgey', 'Pidgeot', 'Pidgeotto');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Larvitar', 'Pupitar', 'Tyrinitar');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Teddiursa', 'Ursaring', 'Ursaluna');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Magby', 'Magmar', 'Magmortar');
INSERT INTO evolucao (estagioum, estagiodois, estagiotres) VALUES ('Caterpie', 'Metapod', 'Butterfree');

 -- INSERTS pokemon

INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Charmander', 'Fogo', 8.5, 0.6);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Bulbassaur', 'Planta', 6.9, 0.7);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Squirtle', 'Agua', 9.0, 0.5);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Dratini', 'Dragao', 3.3, 1.8);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Rhyhorn', 'Terrestre', 115.0, 1.0);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Pidgey', 'Voador', 1.8, 0.3);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Larvitar', 'Dark', 72.0, 0.6);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Teddiursa', 'Normal', 8.8, 0.6);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Magby', 'Fogo', 21.4, 0.7);
INSERT INTO pokemon (nome, tipopokemon, peso, altura) VALUES ('Caterpie', 'Inseto', 2.9, 0.3);

 -- INSERTS vantagempokemon

INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Fogo', 'Planta');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Planta', 'Agua');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Agua', 'Fogo');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Dragao', 'Dragao');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Terrestre', 'Metal');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Voador', 'Lutador');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Dark', 'Psiquico');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Poison', 'Fada');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Fada', 'Lutador');
INSERT INTO vantagempokemon (tipopokemon, vantagemdotipo) VALUES ('Inseto', 'Planta');

 -- INSERTS fraquezapokemon

INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Planta', 'Fogo');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Agua', 'Planta');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Fogo', 'Agua');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Dragao', 'Dragao');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Metal', 'Terrestre');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Lutador', 'Voador');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Psiquico', 'Dark');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Fada', 'Poison');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Lutador', 'Fada');
INSERT INTO fraquezapokemon (tipopokemon, fraquezadotipo) VALUES ('Planta', 'Inseto');

 -- UPDATES regiao

UPDATE regiao 
SET regiao = 'AN'
WHERE idregiao = 1;

UPDATE regiao 
SET regiao = 'CA'
WHERE idregiao = 2;
 
UPDATE regiao 
SET regiao = 'SE'
WHERE idregiao = 3;

UPDATE regiao 
SET regiao = 'DI'
WHERE idregiao = 4;

UPDATE regiao 
SET regiao = 'LA'
WHERE idregiao = 5;
 
  -- UPDATES evolucao
 
UPDATE evolucao
SET estagioum = 'Charmanderr'
WHERE idnome = 1;
 
UPDATE evolucao 
SET estagioum = 'Bulbassaurr'
WHERE idnome = 2;
 
UPDATE evolucao 
SET estagioum = 'Squirtlee'
WHERE idnome = 3;
 
UPDATE evolucao 
SET estagioum = 'Dratinii'
WHERE idnome = 4;
 
UPDATE evolucao 
SET estagioum = 'Rhyhornn'
WHERE idnome = 5;
 
 -- UPDATES pokemon
 
UPDATE pokemon 
SET peso = 9.0
WHERE idpokemon = 1;
 
UPDATE pokemon 
SET peso = 7.0
WHERE idpokemon = 2;
 
UPDATE pokemon 
SET peso = 10.0
WHERE idpokemon = 3;
 
UPDATE pokemon 
SET peso = 3.6
WHERE idpokemon = 4;
 
UPDATE pokemon 
SET peso = 116.0
WHERE idpokemon = 5;
 
 -- UPDATES vantagempokemon
 
UPDATE vantagempokemon 
SET vantagemdotipo = 'Água'
WHERE idvantagem = 1;
 
UPDATE vantagempokemon 
SET vantagemdotipo = 'Planta'
WHERE idvantagem = 2;
 
UPDATE vantagempokemon 
SET vantagemdotipo = 'Dragão'
WHERE idvantagem = 3;
 
UPDATE vantagempokemon 
SET vantagemdotipo = 'Fogo'
WHERE idvantagem = 4;
 
UPDATE vantagempokemon 
SET vantagemdotipo = 'Fada'
WHERE idvantagem = 5;
 
 
 -- UPDATES fraquezapokemon
 
UPDATE fraquezapokemon 
SET fraquezadotipo = 'Água'
WHERE idfraqueza = 1;
 
UPDATE fraquezapokemon 
SET fraquezadotipo = 'Planta'
WHERE idfraqueza = 2;
 
UPDATE fraquezapokemon 
SET fraquezadotipo = 'Dragão'
WHERE idfraqueza = 3;
 
UPDATE fraquezapokemon 
SET fraquezadotipo = 'Fogo'
WHERE idfraqueza = 4;
 
UPDATE fraquezapokemon 
SET fraquezadotipo = 'Fada'
WHERE idfraqueza = 5;
 
 -- DELETES evolucao
 
DELETE FROM evolucao 
WHERE idnome = 1;
 
DELETE FROM evolucao 
WHERE idnome = 2;
 
DELETE FROM evolucao 
WHERE idnome = 3;
 
DELETE FROM evolucao 
WHERE idnome = 4;
 
DELETE FROM evolucao 
WHERE idnome = 5;

 -- DELETES pokemon
 
DELETE FROM pokemon 
WHERE idpokemon = 1;
 
DELETE FROM pokemon 
WHERE idpokemon = 2;
 
DELETE FROM pokemon 
WHERE idpokemon = 3;

DELETE FROM pokemon 
WHERE idpokemon = 4;
 
DELETE FROM pokemon 
WHERE idpokemon = 5;

 -- DELETES vantagempokemon
 
DELETE FROM vantagempokemon 
WHERE idvantagem = 1;
 
DELETE FROM vantagempokemon 
WHERE idvantagem = 2;
 
DELETE FROM vantagempokemon 
WHERE idvantagem = 3;
 
DELETE FROM vantagempokemon 
WHERE idvantagem = 4;
 
DELETE FROM vantagempokemon 
WHERE idvantagem = 5;
 
 -- DELETES fraquezapokemon
 
 DELETE FROM fraquezapokemon 
WHERE idfraqueza = 1;
 
DELETE FROM fraquezapokemon 
WHERE idfraqueza = 2;
 
DELETE FROM fraquezapokemon 
WHERE idfraqueza = 3;
 
DELETE FROM fraquezapokemon 
WHERE idfraqueza = 4;
 
DELETE FROM fraquezapokemon 
WHERE idfraqueza = 5;

-- SELECTS ASCS 

SELECT *
FROM regiao
ORDER BY regiao;

SELECT *
FROM evolucao
ORDER BY estagioum;

SELECT *
FROM pokemon
ORDER BY nome;

SELECT *
FROM vantagempokemon
ORDER BY vantagemdotipo;

SELECT *
FROM fraquezapokemon
ORDER BY fraquezadotipo;

-- SELECTS WHERE

SELECT *
FROM regiao
WHERE idregiao = 6;

SELECT *
FROM evolucao
WHERE idnome = 6;

SELECT *
FROM pokemon
WHERE idpokemon = 9;

SELECT *
FROM vantagempokemon
WHERE idvantagem = 8;

SELECT *
FROM fraquezapokemon
WHERE idfraqueza = 10;

-- SELECT INNER JOIN

SELECT
    P.nome,
    R.regiao
FROM
    pokemon P
INNER JOIN
  regiao AS R
ON  P.idpokemon = R.idregiao;
