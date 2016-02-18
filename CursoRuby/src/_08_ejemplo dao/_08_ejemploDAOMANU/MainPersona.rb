                                                                                                                                                                                                                                  
load 'modelo/Persona.rb'
load 'dao/LogDAO.rb'
load 'dao/PersonasDAO.rb'
load 'negocio/GestionPersonasLN.rb'

def generarMenu
  puts "¿Qué quieres hacer?"
  puts "\t1. Insertar persona. \n\t2. Buscar persona. \n\t3. Borrar personas. \n\t4. Actualizar persona. \n\t5. Listar personas. \n\t6. Salir"
  print ":>"
end


puts "Inicializando..."
sleep(1)
negocio = GestionPersonasLN.new(PersonasDAO.new, LogDAO.new)

begin

  generarMenu
  respuesta = gets.to_i

  case respuesta 
  when 1 then
    puts "Introduzca el nombre de la persona:"
    nombre = gets.strip.capitalize
    puts "Introduzca el apellido de la persona:"
    apellido = gets.strip.capitalize
    
    negocio.guardarPersona(Persona.new(nombre,apellido))
  when 2 then
    puts "Introduzca el id de la persona a buscar:"
    idPersona = gets.to_i
    puts "La persona buscada es: #{negocio.buscarPersona(idPersona)}"
  when 3 then
    puts "Introduzca el id de las personas que desea borrar:"
    arrayIdPersonas = [gets.to_i]
    negocio.borrarPersonas(arrayIdPersonas)
  when 4 then
    puts "Introduzca el id de la persona a actualizar"
    id = gets.to_i
    puts "Introduzca el nuevo nombre"
    nombre = gets.strip.capitalize
    puts "Introduzca el nuevo apellido"
    apellido = gets.strip.capitalize
    personaActualizada = Persona.new(nombre, apellido, id)
    negocio.actualizarPersona(personaActualizada)
  when 5 then
    puts negocio.listarPersonas
  when 6 then
    puts "Saliendo del programa. Gracias por venir"
  end
    
end while respuesta != 6      
    
    
    
=begin
  preguntar lo del personasDAO.list
  preguntar error 
  negocio/GestionPersonasLN.rb:22:in `buscarPersona': undefined method `each' for nil:NilClass (NoMethodError)
  from C:/CursoRuby/Workspace/cursoRuby/src/_08_ejemploDAO/MainPersona.rb:34:in `<main>'
  
=end    
