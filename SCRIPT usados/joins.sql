INSERT INTO UBICACION (barrio_vereda, comuna_corregimiento, zona)
SELECT DISTINCT barrio_vereda, comuna_corregimiento, zona
FROM datos_originales;


INSERT INTO ETNIA (grupo_etnico)
SELECT DISTINCT grupo_etnico
FROM datos_originales;


INSERT INTO PERSONA (id_original, edad, genero, tipo_identificacion, categoria, periodo)
SELECT id, edad, genero, tipo_identificacion, categoria, periodo
FROM datos_originales;


INSERT INTO CONDICION_SOCIAL (id_persona, cabeza_familia, experiencia_migratoria, orientacion_sexual, pertenece_lgbti)
SELECT p.id_persona, d.cabeza_familia, d.experiencia_migratoria, d.orientacion_sexual_lgtbi, d.orientacion_sexual_lgtbi
FROM datos_originales d
INNER JOIN PERSONA p ON d.id = p.id_original;


INSERT INTO DISCAPACIDAD (id_persona, discapacidad, tipo_discapacidad)
SELECT p.id_persona, d.personas_condicion_discapacidad, d.tipo_discapacidad
FROM datos_originales d
INNER JOIN PERSONA p ON d.id = p.id_original;


INSERT INTO EDUCACION (id_persona, nivel_educativo)
SELECT p.id_persona, d.nivel_educativo
FROM datos_originales d
INNER JOIN PERSONA p ON d.id = p.id_original;


INSERT INTO OCUPACION (id_persona, condicion_ocupacional)
SELECT p.id_persona, d.condicion_ocupacional
FROM datos_originales d
INNER JOIN PERSONA p ON d.id = p.id_original;


INSERT INTO PERSONA_ETNIA (id_persona, id_etnia)
SELECT p.id_persona, e.id_etnia
FROM datos_originales d
INNER JOIN PERSONA p ON d.id = p.id_original
INNER JOIN ETNIA e ON d.grupo_etnico = e.grupo_etnico;


INSERT INTO PERSONA_UBICACION (id_persona, id_ubicacion)
SELECT p.id_persona, u.id_ubicacion
FROM datos_originales d
INNER JOIN PERSONA p ON d.id = p.id_original
INNER JOIN UBICACION u ON d.barrio_vereda = u.barrio_vereda 
    AND d.comuna_corregimiento = u.comuna_corregimiento 
    AND d.zona = u.zona;