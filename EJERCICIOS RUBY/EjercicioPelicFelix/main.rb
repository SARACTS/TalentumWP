load 'dao/PeliculaDAO.rb'
load 'modelo/persona.rb'
load 'modelo/actor.rb'
load 'modelo/director.rb'
load 'modelo/pelicula.rb'
load 'negocio/GestionPelicula.rb'

def comprobarPelicula(insertada)
  if insertada
    puts "La pelicula ha sido insertada"
else 
  puts "La pelicula no ha podido der insertada"
end
end


gestorPeliculas=GestionPeliculas.new()
gestorPeliculas.tamañoMaximo=3
gestorPeliculas.peliculasDao=PeliculaDAO.new

titulo = "Matrix"

director = Director.new "Hermanos guasosqui", 45


neo =  Actor.new "Keanu Reeves","Masculino"
triniti = Actor.new "Mari trini","Femenino"
actores = [neo, triniti]

matrix =  Pelicula.new(titulo, director, actores)

resultado = gestorPeliculas.insertarPelicula matrix 
comprobarPelicula(resultado) #metodooooo
puts gestorPeliculas.listar


#repetimos el proceso N veces

matrix =  Pelicula.new(titulo, director, actores)

resultado = gestorPeliculas.insertarPelicula matrix 
comprobarPelicula(resultado) #metodooooo
puts gestorPeliculas.listar



matrix =  Pelicula.new(titulo, director, actores)

resultado = gestorPeliculas.insertarPelicula matrix 
comprobarPelicula(resultado) #metodooooo
puts gestorPeliculas.listar


#La ultima vez

matrix =  Pelicula.new(titulo, director, actores)

resultado = gestorPeliculas.insertarPelicula matrix 
comprobarPelicula(resultado) #metodooooo
puts gestorPeliculas.listar



#probamos a borrar una

gestorPeliculas.borrar 1

#modificamos una pelicula

puts "Modificamos pelicula"
titulo = "Harry Potter"
director = Director.new "El director que toque", 55 
harry= Actor.new "Harry el sucio","Masculino"
ron = Actor.new "Ron stuart","Masculino"
hermione = Actor.new "Juliu andreiws","femenino"
actores = [harry,ron,hermione]
pelicula = Pelicula.new titulo, director, actores
pelicula.id = 3
gestorPeliculas.modificar pelicula
puts gestorPeliculas.listar

