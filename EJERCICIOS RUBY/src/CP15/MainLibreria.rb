=begin
Genera una clase de prueba que realice:
1. Cuatro altas de libros
2. Lista el contenido
3. Borra un libro
4. Lista el contenido
5. Modifica un libro
6. Lista el contenido
=end

load 'modelo/Libro.rb'
load 'dao/LogDAO.rb'
load 'dao/LibroDAO.rb'
load 'negocio/GestionLibreria.rb'

#creamos un nuevo objeto de gestión, creando desde el nuevos objetos del modelo y del log.
negocio = GestionLibreria.new(LibroDAO.new, LogDAO.new)

#1. Cuatro altas de libros. 
negocio.altaLibro(Libro.new("titulo", "autor", "descripcion"))
negocio.altaLibro(Libro.new("titulo2", "autor2", "descripcion2"))
negocio.altaLibro(Libro.new("titulo3", "autor3", "descripcion3"))
negocio.altaLibro(Libro.new("titulo4", "autor4", "descripcion4"))

#2. Listar el contenido. 
puts negocio.listarLibros

#3. Borrar un libro. Hay que darle un array, porque admite la posibilidad de borrar varios libros a la vez.
negocio.bajaLibro([1])

#4. Listar el contenido.
puts negocio.listarLibros

#5. Modificar un libro. Para modificar un libro hay que darle el id del libro a modificar, y los valores que queramos poner en el libro.
modificaLibro = Libro.new("nuevoTitulo2", "nuevoAutor2", "nuevaDescripcion2", 2)
negocio.modificarLibro(modificaLibro)

#6. Listar el contenido.
puts negocio.listarLibros
