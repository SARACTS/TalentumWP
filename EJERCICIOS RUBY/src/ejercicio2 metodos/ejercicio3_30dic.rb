
def suma valor1,valor2
  valor1+valor2
end
  

def resta valor1,valor2
  valor1-valor2
end  


def multiplicar valor1,valor2
  valor1*valor2
end  


def division valor1,valor2
  if valor2 == 0
    mostrar = "ERROR 0"
    
else
  valor1/valor2
end 
end 


def impPant (valor1,valor2)
  puts "La suma de #{valor1} + #{valor2} es #{suma valor1,valor2}"
  puts "La suma de #{valor2} + #{valor1} es #{suma valor2,valor1}"
  puts "La resta de #{valor1} - #{valor2} es #{resta valor1,valor2}"
  puts "La resta de #{valor2} - #{valor1} es #{resta valor2,valor1}"
  puts multiplicar valor1,valor2
  puts division valor1,valor2

end



puts "Introduzca el primer valor numerico"
valor1 = gets.strip.to_i
puts "Introduzca el segundo numerico"
valor2 = gets.strip.to_i
 
 impPant valor1,valor2
 

