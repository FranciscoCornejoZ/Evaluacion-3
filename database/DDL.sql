CREATE DATABASE youtube;

\c youtube;

CREATE TABLE usuarios (
  id        SERIAL PRIMARY KEY,
  nombre    varchar(50)   NOT NULL UNIQUE,
  email     VARCHAR(50)   NOT NULL UNIQUE,
  pass      VARCHAR(50)   NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE videos (
  id                  SERIAL PRIMARY KEY,
  titulo              VARCHAR(100)                 NOT NULL,
  descripcion         TEXT,
  fecha_publicacion   VARCHAR(50)                  NOT NULL
);
