load 'modelo/pelicula.rb'
load 'dao/LogDAO.rb'
load 'dao/PeliculaDAO.rb'
load 'negocio/GestionPelicula.rb'



def generarMenu
  puts "¿Qué quieres hacer?"
  puts "\t1. Insertar pelicula. \n\t2. Borrar pelicula. \n\t3. Listar pelicula. \n\t4. Actualizar pelicula. \n\t5. Salir"
  print ":>"
end


puts "Inicializando..."
sleep(1)

negocio = GestionPelicula.new(PeliculaDAO.new)  #PeliculaDAO es la class

begin

  generarMenu
  respuesta = gets.to_i
  
    case respuesta
      when 1 then
            puts "Introduzca el título de la pelicula" 
            titulo = gets.strip.capitalize
            puts "Introduzca el director de la pelicula" 
            director = gets.strip.capitalize
            puts "Introduzca los actores de la pelicula" 
            actores = gets.strip.capitalize
      negocio.insert(Pelicula.new(titulo, director, actores))
      
      when 2 then
            puts "Introduzca el id de la pelicula que desea borrar"
            almacenPelicula = [gets.to_i]
            negocio.delete(almacenPelicula)
    
      when 3 then
            puts negocio.listar
       
      when 4 then 
            puts "Introduzca el id de la pelicula que desea actualizar"
            id = gets.to_i
            puts "Introduzca el nuevo titulo"
            titulo = gets.strip.capitalize
            puts "Introduzca el nuevo director de la pelicula" 
            director = gets.strip.capitalize
            puts "Introduzca los actores nuevos de la pelicula" 
            actores = gets.strip.capitalize 
            peliculaActualizada = Pelicula.new(titulo, director, actores)
            negocio.update(peliculaActualizada)
    
    when 5 then
      puts "Saliendo del programa. Gracias por venir"
    end
      
  end while respuesta != 5      

