load 'dao/LibrosDAO.rb'
load 'modelo/Libro.rb'
load 'negocio/GestionLibros.rb'



negocio = GestionLibros.new(LibrosDAO.new)

#Creación cuatro altas de libros y listar el contenido

negocio.insert(Libro.new("Crepusculo", "Stephenie Meyer", "Vampiros y Licantropos"))
negocio.insert(Libro.new("El Gato Negro y Otros Cuentos", "Edgar Allan Poe", "Cuentos"))
negocio.insert(Libro.new("La Casa de Bernarda Alba", "Federico Garcia Lorca", "Obra teatral"))
negocio.insert(Libro.new("Harry Potter y la Piedra Filosofal", "J.K. Rowling", "Magia"))

puts negocio.listar



#Borrar un libro y listar el contenido

negocio.delete [2]

puts negocio.listar


#Modificar un libro y listar el contenido

updateLibro= Libro.new("El Jove Rey", "Oscar Wilde", "Cuentos y ficcion", 2)
negocio.update(updateLibro)

puts negocio.listar

