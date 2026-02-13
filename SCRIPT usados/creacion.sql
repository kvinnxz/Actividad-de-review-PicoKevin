CREATE DATABASE IF NOT EXISTS Consolidado_usuarios;
USE Consolidado_usuarios;

CREATE TABLE datos_originales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100),
    periodo INT,
    genero VARCHAR(30),
    edad INT,
    tipo_identificacion VARCHAR(100),
    personas_condicion_discapacidad VARCHAR(20),
    tipo_discapacidad VARCHAR(100),
    cabeza_familia VARCHAR(20),
    orientacion_sexual_lgtbi VARCHAR(100),
    experiencia_migratoria VARCHAR(20),
    grupo_etnico VARCHAR(150),
    nivel_educativo VARCHAR(150),
    condicion_ocupacional VARCHAR(150),
    barrio_vereda VARCHAR(150),
    comuna_corregimiento VARCHAR(150),
    zona VARCHAR(50)
);

