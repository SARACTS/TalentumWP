
#Un bloque es una porcion de codigo encerrada entre llaves {} o entre  do.. end
#El bloque solo puede aparecer despues de usar un metodo
#Dicho metodo deberia estar preparado para usa dicho bloque

  3.times{ 
    puts "hola bloque"
    }
  
  3.times do
    puts "hola bloque con do..end"
  end
  
#En los bloques tambien podemos poner una variable ( se ecriben ||)
#en el caso del metodo 'times' representará cada una de las iteraciones

 
   3.times{
     |var|
     puts "hola time, vamos por la iteracion #{var}"
   }


    array = [ "pepe", "pepin", "pepon"]
    array.size.times {
     |var|
     puts "hola time, vamos por la iteracion #{array[var]}"
   }
   
   
   #ejecutamos    (3-2) +1
   
  2.upto 3 do
    puts "Hola upto"
  end
  
  
  0.upto 3 do
    |var|
    puts "Hola upto #{var}"
    puts "hola array #{array[var
    ]}"
  end


#mas metodos
  puts "----"
  array = [1,2,3,4]
  array.each{
    |var| #contendra cada uno de los elementos del array
      puts "valor del array #{var}"
  }


  array.each_with_index{
    |valor, indice|
      puts "El valor del indice #{indice} es #{valor}"
  }



#select bastante guay para las busquedas
#select va a devolver el valor que coincida con la condicion
    array.select{
      |var|
        var == "pepe"
    }
  
  load "../_04_clases/Persona.rb"
  arrayPersonas = [Persona.new("33","Felix","Pocoymal",36), Persona.new("34","Pepe","Deluxe", 35)] 
  
  resultado =  arrayPersonas.select{
    |persona| #cada var es una persona, renombramos a personas 
    persona.nombre == "Pepe"  
  }
  
  puts resultado
  
  puts "\t"
  
  puts "----borrar elemento con condicion----"
  arrayPersonas.delete_if{
    |persona| 
      persona.nombre == "Pepe"
  }
  
  puts arrayPersonas
  
  #Todos los metodos pueden recibir un bloque como argumento implicito
  #pudiendo invocar dicho bloque en cualquier momento de nuestro código
  #usando la palabra reservada 'yield'
  
   puts "-----"
   def metodo
     puts "Esto es un método de ejemplo"
     yield
   end  
    metodo {
      puts "Esto es un bloque de ejemplo"
    }
    
    
    def metodo
      puts "Esto es otro metodo de ejmeplo"
      yield "valor1"
    end
    metodo{
      |var|
      puts "Esto es otro bloque de ejemplo con el parametro #{var}"
    }
  
    def metodo parametro
      puts "Esto es otro metodo maaas de ejemplo "
      yield parametro
    end
    
    metodo("Felix"){
      |var|
         puts "Esto es otro bloque de ejemplo con el parametro #{var}"
    }
