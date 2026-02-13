# Base de Datos Consolidado de Usuarios

Proyecto de normalización de base de datos con información de usuarios categorizados por edad, ubicación, condición social, educación y ocupación.

## 📊 Descripción

Base de datos normalizada que contiene **76,862 registros** de personas con información demográfica, social y geográfica.

## 🗂️ Estructura de la Base de Datos

### Tablas Principales
- **PERSONA** - Datos básicos (edad, género, identificación, categoría, período)
- **UBICACION** - Barrios, comunas y zonas
- **ETNIA** - Grupos étnicos

### Tablas Relacionadas
- **CONDICION_SOCIAL** - Información familiar y migratoria
- **DISCAPACIDAD** - Condición y tipo de discapacidad
- **EDUCACION** - Nivel educativo
- **OCUPACION** - Condición ocupacional

### Tablas Puente
- **PERSONA_ETNIA** - Relación persona-etnia
- **PERSONA_UBICACION** - Relación persona-ubicación


## 📁 Estructura del Proyecto
```
├── DATA EXPORT/              # Base de datos exportada
├── imagenes/                 # Capturas de las tablas
├── SCRIPT usados/            # Scripts SQL
│   ├── creacion.sql
│   ├── inserts.sql
│   ├── joins.sql
│   └── tablas normalizadas.sql
└── README.md
```

## 📈 Datos

- Total de registros: **76,862**
- Tablas: **9**
- Relaciones: Normalizadas hasta 3FN

## Hecho por:
Kevin Pico