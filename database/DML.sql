INSERT INTO usuarios (id, nombre, email, pass)
VALUES
  (DEFAULT, 'RAMON', 'RAMON@example.com', 'C123'),
  (DEFAULT, 'JAVIER', 'JAVIER@example.com', 'C234'),
  (DEFAULT, 'PAULINA', 'PAULINA@example.com', 'C345');

INSERT INTO videos (id, titulo, descripcion, fecha_publicacion)
VALUES
  (DEFAULT, 'HOLA', 'Descripción 1', '2024-03-11'),
  (DEFAULT, 'MUNDO', 'Descripción 2',  '2024-01-22'),
  (DEFAULT, 'MAGICO', 'Descripción 3', '2024-04-03');

SELECT * FROM usuarios;
SELECT * FROM videos;