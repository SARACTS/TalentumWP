                                                                                                                                                                                                                                  
load 'modelo/Libro.rb'
load 'dao/LogDAO.rb'
load 'dao/LibroDAO.rb'
load 'negocio/GestionLibreria.rb'

#capitalizar todas las palabras en una cadena de texto.
#funcion encontrada en internet. lo que hace es separar las palabras de la cadena, capitalizar una a una cada una de ellas, y volver a juntarlas mediante espacios.
def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(" ")
end

def generarMenu
  puts "¿Qué quieres hacer?"
  puts "\t1. Agregar libro. \n\t2. Borrar libro. \n\t3. Listar libros. \n\t4. Modificar libro. \n\t5. Salir"
  print ":>"
end

puts "Inicializando..."
sleep(1)
negocio = GestionLibreria.new(LibroDAO.new, LogDAO.new)

begin

  generarMenu
  respuesta = gets.to_i

  case respuesta
  when 1 then
    puts "Introduzca el título del libro"
    print ":>"
    titulo = gets.strip.capitalize
    puts "Introduzca el autor del libro"
    print ":>"
    autor = gets.strip
    autor = titleize(autor)
    puts "Introduzca la descripcion del libro"
    print ":>"
    descripcion = gets.strip.capitalize
        
    negocio.altaLibro(Libro.new(titulo, autor, descripcion))
    
  when 2 then
    puts "Introduzca el id del libro a borrar"
    print ":>"
    arrayIdLibros = [gets.to_i]
    negocio.bajaLibro(arrayIdLibros)
    
  when 3 then
    if negocio.listarLibros == nil
      puts "No hay libros guardados"
    else
      puts negocio.listarLibros
    end
    
  when 4 then
    puts "Introduzca el id del libro a modificar"
    print ":>"
    id = gets.to_i
    puts "Introduzca el nuevo título"
    print ":>"
    titulo = gets.strip.capitalize
    puts "Introduzca el nuevo autor"
    print ":>"
    autor = gets.strip
    autor = titleize(autor)
    puts "Introduzca la nueva descripcion"
    print ":>"
    descripcion = gets.strip.capitalize
    
    libroActualizado = Libro.new(titulo, autor, descripcion, id)
    negocio.modificarLibro(libroActualizado)
    
  when 5 then
    puts "Saliendo del programa. Gracias por venir"
    
  else
    puts "Introduzca una opción válida"
    
  end
    
end while respuesta != 5
