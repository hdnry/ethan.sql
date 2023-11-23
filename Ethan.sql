CREATE DATABASE IF NOT EXISTS exo_contacts;
USE exo_contacts;


CREATE TABLE contacts (
    id INT PRIMARY KEY,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    cp VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
);

CREATE TABLE telephone (
    id INT PRIMARY KEY,
    id_contact INT,
    numero VARCHAR(50),
    type BYTE,
    FOREIGN KEY (id_contact) REFERENCES contacts(id)
);

CREATE TABLE pays (
    iso_3 VARCHAR(3) PRIMARY KEY,
    nom VARCHAR(70),
    iso_2 VARCHAR(2),
    nationalite VARCHAR(50)
);