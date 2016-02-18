
#Un hash es una coleccion de datos que mantiene una estructura
#clave => valor
#Los hashes son conocidos como Arrays asociativos
#Los arrays son indexados

#Creamos un hash vacio
array = []
hash = {}
otroHash = Hash.new

#add elementos
hash["clave"] = "valor"
hash["otraClave"] = 3

#recuperar elementos
puts hash["clave"] #recuperamos el valor que almacenamos
puts "El valor de la clave es #{hash["otraClave"]}"

#solo se admite una clave para un valor dado, si repitieramos una clave se cambiaria el valor
hash["clave"]= "otro valor"
puts hash["clave"]

#podemos inicializar un hash con valores
otroHash = { "clave1" => "valor1", "clave2" => "valor2"}
puts otroHash
puts otroHash["clave1"]

#hasta aqui estamos metiendo como clave un string

#Para poner claves en un hash, ruby recomienda el uso de los  simbolos  ejemplo  ' :simbolo '
hashSimbolos = {:clave1 => "valor1" }
puts hashSimbolos[:clave1]
hashSimbolos[:clave2] = "valorSimbolo2"
hashSimbolos[:clave3] = "valorSimbolo3"
puts hashSimbolos[:clave2]

    unless hashSimbolos[:clave4]
      puts "El valor no existe"
    end
    
    if !hashSimbolos[:clave4] # ! negacion en cualquier expresión lógica
      puts "El valor sigue sin existir"
    end

#Los simbolos son inmutables y unicos en todo el programa
#inmutable quiere decir que una vez los atributos (el estado de un objeto) hayan sido establecidos, no se pueden cambiar

  variable1 = "valor1"
  variable2 = "valor1"
  
    if variable1 == variable2
      puts "Tienen el mismo valor"
    end
  
  #'equal?' compara posiciones de memoria
  
    if variable1.equal? variable2
      puts "el mismo objeto"
    else 
      puts "distinto objeto"
     end

#convertimos un STring a simbolo
hash[variable1.to_sym] = "otra cosiiiii"
puts hash[:valor1]


  if variable1.to_sym.equal?  variable2.to_sym
    puts "Son iguales los simbolos"
  end
  
  
  hashEquipos = {}
  hashEquipos[:madrid] = ["C.Ronaldo", "Bale", "Raul"]
  hashEquipos[:rayo] = ["Trashorras", "Amaya"]
  
  for jugador in hashEquipos[:madrid]
    puts jugador
  end
  
  
    puts "------"
  #podemos mostrar un array con todas las "keys" del hash
  puts hashEquipos.keys.inspect
  #podemos mostrar un array con todos los "values" del hahs
  puts hashEquipos.values.inspect

  puts "---Equipos de la liga Talentum---"
  for equipo in hashEquipos.keys
    puts "- Equipo: #{equipo}"
    for jugador in hashEquipos[equipo]
      puts "-- Jugador: #{jugador}"
    end
  end

