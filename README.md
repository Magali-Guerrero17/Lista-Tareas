# Lista de Tareas - API REST

API REST para gestionar tareas organizadas por categorías, con registro e inicio de sesión de usuarios. Desarrollada con NestJS, Prisma y PostgreSQL.

## Tecnologías

- NestJS
- PostgreSQL
- Prisma 7
- class-validator y class-transformer
- JWT (`@nestjs/jwt`) y bcrypt

## Requisitos

- Node.js 20 o superior
- PostgreSQL

## Instalación

1. Clonar el repositorio:
   git clone https://github.com/Magali-Guerrero17/Lista-Tareas.git
2. Instalar dependencias:
   npm install
3. Crear la base de datos `lista-tareas` en PostgreSQL.
4. Crear un archivo `.env` en la raíz con:
   PORT=4000
   DATABASE_URL="postgresql://USUARIO:PASSWORD@localhost:5432/lista-tareas?schema=public"
   API_BASE_URL=http://localhost:4000/
   JWT_SECRET="una-frase-larga-y-secreta"
5. Generar el cliente de Prisma y crear las tablas:
   npx prisma generate
   npx prisma migrate dev
6. Ejecutar el proyecto:
   npm run start:dev

El script `database/datos.sql` contiene los datos de ejemplo (5 registros por tabla).

## Estructura del proyecto

src/
├── main.ts
└── modules/
    ├── app/
    ├── prisma/
    ├── categories/
    ├── tasks/
    ├── users/
    └── auth/

## Endpoints

| Método | Ruta | Descripción |
|---|---|---|
| POST | /auth/register | Registrar un usuario |
| POST | /auth/login | Iniciar sesión y obtener el JWT |
| GET | /users | Listar usuarios |
| GET | /users/:id | Obtener un usuario |
| POST | /categories | Crear categoría |
| GET | /categories | Listar categorías |
| GET | /categories/:id | Obtener una categoría |
| PATCH | /categories/:id | Actualizar categoría |
| DELETE | /categories/:id | Eliminar categoría |
| POST | /tasks | Crear tarea |
| GET | /tasks | Listar tareas |
| GET | /tasks/:id | Obtener una tarea |
| PATCH | /tasks/:id | Actualizar tarea |
| DELETE | /tasks/:id | Eliminar tarea |

## Pruebas con Postman

La colección `Lista de Tareas` incluye las carpetas Auth, Categories y Tasks, con una request por endpoint, su descripción y ejemplos de validación.

## Estrategia de ramas

- `main`: rama estable
- `dev`: rama de integración
- `feature/`, `fix/`, `refactor/`, `docs/`: ramas de trabajo

## Autora

Magali Guerrero - Tecnicatura Universitaria en Programación, UTN