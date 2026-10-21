# 🐳 Flask CRUD con Docker y MySQL

## 📌 Descripción del proyecto

Este proyecto consiste en una aplicación web desarrollada con Flask y Python que permite administrar información de contactos mediante operaciones CRUD (Crear, Leer, Actualizar y Eliminar).

La aplicación utiliza MySQL como sistema gestor de bases de datos y Docker para ejecutar los servicios dentro de contenedores independientes.

El objetivo principal de esta práctica es implementar la contenerización de una aplicación web, facilitando su configuración, ejecución y conexión con una base de datos.

## 🎯 Objetivo

Implementar una aplicación Flask conectada a MySQL mediante Docker y Docker Compose, con la finalidad de comprender el funcionamiento de los contenedores, la comunicación entre servicios y la administración de aplicaciones web.

## 🛠️ Tecnologías utilizadas

- **Python:** Lenguaje de programación utilizado para desarrollar la aplicación.
- **Flask:** Framework que permite crear la aplicación web.
- **MySQL 8.0:** Sistema gestor de bases de datos.
- **Docker:** Plataforma para crear y ejecutar contenedores.
- **Docker Compose:** Herramienta para administrar varios contenedores.
- **HTML y CSS:** Tecnologías utilizadas para la interfaz web.
- **Git y GitHub:** Herramientas para el control de versiones.

## 📂 Estructura del proyecto

```text
flaskcrud-docker/
│
├── app/
│   ├── main.py
│   ├── db.py
│   ├── contacts.py
│   ├── static/
│   └── templates/
│
├── sql/
│   └── db.sql
│
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── .env.example
├── .gitignore
└── README.md
```

## ⚙️ Funcionamiento

La aplicación se ejecuta mediante dos contenedores principales:

### 1. Contenedor Flask

Se encarga de ejecutar la aplicación web desarrollada en Python.

Permite visualizar y administrar los contactos mediante una interfaz web.

### 2. Contenedor MySQL

Se encarga de almacenar y administrar la información de los contactos.

La conexión entre Flask y MySQL se realiza mediante la red interna de Docker Compose.

## 🐳 Configuración de Docker

### Dockerfile

El archivo `Dockerfile` contiene las instrucciones necesarias para construir la imagen de la aplicación.

Sus principales funciones son:

1. Utilizar Python 3.12 como imagen base.
2. Establecer el directorio de trabajo.
3. Instalar las dependencias necesarias.
4. Copiar los archivos del proyecto.
5. Configurar el puerto de Flask.
6. Ejecutar la aplicación.

### Docker Compose

El archivo `docker-compose.yml` permite ejecutar Flask y MySQL de manera conjunta.

También configura las variables de entorno, los puertos, los volúmenes y la comunicación entre ambos servicios.

## 🚀 Instalación y ejecución

### 1. Clonar el repositorio

```bash
git clone https://github.com/maferro07/flaskcrud-docker.git
```

### 2. Entrar a la carpeta

```bash
cd flaskcrud-docker
```

### 3. Configurar las variables de entorno

Crear el archivo `.env` a partir de `.env.example`:

```bash
cp .env.example .env
```

Verificar que las variables de conexión coincidan con las configuradas en `docker-compose.yml`.

### 4. Construir e iniciar los contenedores

```bash
docker compose up -d --build
```

### 5. Verificar los contenedores

```bash
docker compose ps
```

### 6. Abrir la aplicación

Ingresar desde el navegador a:

http://localhost:5001

## 🔌 Puertos utilizados

| Servicio | Puerto externo | Puerto interno |
|----------|----------------|----------------|
| Flask | 5001 | 5000 |
| MySQL | 3308 | 3306 |

Se utilizó el puerto 5001 para Flask con el propósito de evitar conflictos con otros servicios que utilizan el puerto 8080.

## 🗄️ Base de datos

La aplicación utiliza MySQL para almacenar los registros de contactos.

El archivo `sql/db.sql` contiene las instrucciones SQL necesarias para inicializar la base de datos.

Para acceder a MySQL desde Docker:

```bash
docker compose exec mysql mysql -u root -p
```

Para visualizar las bases de datos:

```sql
SHOW DATABASES;
```

Para seleccionar la base de datos:

```sql
USE flaskcrud;
```

Para consultar las tablas:

```sql
SHOW TABLES;
```

## 💻 Operaciones CRUD

La aplicación está diseñada para realizar las siguientes operaciones:

- **Create:** Agregar nuevos contactos.
- **Read:** Consultar los contactos registrados.
- **Update:** Modificar la información de un contacto.
- **Delete:** Eliminar contactos existentes.

Estas operaciones permiten administrar los registros almacenados en MySQL.

## 🛑 Detener los contenedores

Para detener los servicios:

```bash
docker compose down
```

Para consultar los registros de ejecución:

```bash
docker compose logs
```

## 📚 Aprendizajes obtenidos

Durante el desarrollo de esta práctica se reforzaron conocimientos relacionados con la contenerización de aplicaciones web y la administración de bases de datos.

Uno de los principales aprendizajes fue comprender cómo Docker permite ejecutar Flask y MySQL en contenedores independientes, manteniendo la comunicación entre ambos servicios.

También se identificó la importancia de configurar correctamente las variables de entorno, los puertos y las credenciales de conexión para garantizar el funcionamiento de la aplicación.

Finalmente, se utilizó GitHub para almacenar el código y documentar las modificaciones realizadas durante la práctica.

## 👩‍💻 Autora

**María Fernanda Rosales Sánchez**

Proyecto académico desarrollado como práctica de implementación de Docker, Flask y MySQL.

## 🔗 Repositorio

https://github.com/maferro07/flaskcrud-docker
