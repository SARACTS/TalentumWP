
#Los bloques NO son objetos y por tanto no pueden ser manipulados, 
#es decir,no tienen metodos asociados al mismo.
#Los procedimientos SI son objetos y por tanto tienen metodos 
#asociados a ellos.
#El objetivo principal es evitar repetir bloques.

proc = Proc.new {
  |v|
  puts "Esto es un procedimiento con la variable #{v}"
}

#Esto lo interpretaria como un hash
#proc = {|v| puts "Esto que es?"}


#con el metodo 'call' invocamos el bloque
proc.call 3
proc.call "SARA"
proc.call
proc.call(2)
proc.call 2,1 # solo sale 2 porque espera solo uno y coge el primero

3.times{
  puts "Hola"
}


3.times(&proc)


#El procedimiento se utiliza mas que el bloque apra evitar repetir codigo