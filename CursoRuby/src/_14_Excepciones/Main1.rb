
#Las excepciones son errores que ocurren en tiempo de ejecución 
#y que pueden romper la ejecución del programa

def lanzarExcepcion
  puts "Antes de lanzar la excepcion"
  #Lanzamos un error
  raise "Ha ocurrido un error inesperado"
  puts "Depues de lanzar una excepcion"
end

lanzarExcepcion
puts "despues de llamar a lanzar excepcion"
