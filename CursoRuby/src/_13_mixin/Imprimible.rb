#un modulo puede servir tb como biblioteca de funciones
#ya que ruby no permite la herencia multiple, mediante el mixin
#podemos incluir todos los modulos que queramos a una clase
#seria como emular la herencia multiple

module Imprimible
  def imprimir_pantalla (texto)
    puts "Imprimos por pantalla: #{texto}"    
  end  
  
  def imprimir_fichero (fichero,texto)
    File.open(fichero, 'w'){ #'w' es el comando para escribir write / representa abrir el fichero en escritura
      |f| #representa el fichero
     f.puts "--#{texto}"     
    }
  end
end