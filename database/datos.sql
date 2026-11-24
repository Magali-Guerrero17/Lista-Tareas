-- Base de datos: lista-tareas

-- Borra las tablas si ya existían
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS categories;

-- Tabla de categorías
CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  descripcion TEXT
);

-- Tabla de tareas (cada tarea pertenece a una categoría)
CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  descripcion TEXT,
  prioridad INTEGER NOT NULL CHECK (prioridad BETWEEN 1 AND 5),
  completada BOOLEAN NOT NULL DEFAULT false,
  category_id INTEGER NOT NULL REFERENCES categories(id) ON DELETE RESTRICT
);

-- 5 categorías
INSERT INTO categories (nombre, descripcion) VALUES
('Estudio', 'Tareas de la facultad'),
('Casa', 'Tareas del hogar'),
('Trabajo', 'Pendientes laborales'),
('Salud', 'Turnos y actividad física'),
('Compras', 'Cosas para comprar');

-- 5 tareas
INSERT INTO tasks (titulo, descripcion, prioridad, completada, category_id) VALUES
('Estudiar NestJS', 'Repasar módulos y DTOs', 5, false, 1),
('Entregar TP 12', 'Autenticación con JWT', 4, false, 1),
('Lavar la ropa', NULL, 2, true, 2),
('Armar informe', 'Informe semanal', 3, false, 3),
('Sacar turno al dentista', NULL, 3, false, 4);

-- Verificación
SELECT * FROM categories;
SELECT * FROM tasks;

SELECT t.id, t.titulo, t.prioridad, c.nombre AS categoria
FROM tasks t
JOIN categories c ON c.id = t.category_id;