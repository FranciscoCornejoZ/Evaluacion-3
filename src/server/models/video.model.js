import db from '../database/db_connect.js'

export const findAll = () => db('SELECT * FROM videos;')

export const findById = (id) => db('SELECT * FROM videos WHERE id = $1;', [id])

export const create = ({ titulo, descripcion, fecha_publicacion }) =>
  db('INSERT INTO videos (id, titulo, descripcion, fecha_publicacion) VALUES (DEFAULT, $1, $2, $3) RETURNING *;', [titulo, descripcion, fecha_publicacion])

export const updateById = (id, { titulo, descripcion, fecha_publicacion }) =>
  db('UPDATE videos SET titulo = $2, descripcion = $3, fecha_publicacion = $4 WHERE id = $1 RETURNING *;', [id, titulo, descripcion, fecha_publicacion])

export const deleteById = (id) => db('DELETE FROM videos WHERE id = $1 RETURNING *;', [id])
