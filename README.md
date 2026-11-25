# Lista de Tareas - API REST

API REST para gestionar tareas organizadas por categorías, desarrollada con NestJS y PostgreSQL.

## Tecnologías

- NestJS
- PostgreSQL
- Prisma (TP 11)
- class-validator y class-transformer
- JWT y bcrypt (TP 12)

## Requisitos

- Node.js 20 o superior
- PostgreSQL

## Instalación

1. Clonar el repositorio:
   git clone https://github.com/Magali-Guerrero17/lista-tareas.git
2. Instalar dependencias:
   npm install
3. Crear la base de datos `lista-tareas` en PostgreSQL y ejecutar el script `database/datos.sql`.
4. Crear un archivo `.env` en la raíz con:
   PORT=4000
   DATABASE_URL="postgresql://USUARIO:postgres@localhost:5432/lista-tareas?schema=public"
   API_BASE_URL=http://localhost:4000/
5. Ejecutar el proyecto:
   npm run start:dev

## Estructura del proyecto

src/
├── main.ts
└── modules/
    ├── app/
    ├── categories/
    └── tasks/

## Endpoints

| Método | Ruta | Descripción |
|---|---|---|
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

## Estrategia de ramas

- `main`: rama estable
- `dev`: rama de integración
- `feature/`, `fix/`, `refactor/`, `docs/`: ramas de trabajo

## Autora

Magali Guerrero - Tecnicatura Universitaria en Programación, UTN