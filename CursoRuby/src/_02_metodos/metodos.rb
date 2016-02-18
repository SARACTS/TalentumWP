
#Los emtodos en RUBY se crean mediante la palabra reservada 'def'

def metodo
  puts "Hola metodo"
end

metodo
metodo()

#Si damos a un metodo el mismo nombre que otro ya existente anterior, lo eliminamos/sobreescribimos   el anterior
 def metodo
  puts "Hola metodo 2"
end
metodo

def saludar (nombre)
  puts "Hola #{nombre}!"
end

saludar "Sara" #no hace falta poner parentesis, los parametros van separados por comas
saludar("Sara")


#Valores de retorno
def devolverSaludo
  #return "Hola devolverSaludo"  #return no es necesario
  puts "devolverSaludo -> Entrando en el metodo"
  "Hola devolverSaludo"
end
valorDeRetorno = devolverSaludo
puts valorDeRetorno



#En RUBY podemos dar valores por defecto a los parametros. En este caso estmaos inicializando solo valor2 a 0 o lo que es lo mismo
#seguimos teniendo la necesidad de mandar un parametro pero el segundo es optativo
def sumar (valor1, valor2=0)
  valor1 + valor2
end

sumar 55,127

puts "El resultado es: #{sumar 55,127}"
valor1 = 34
valor2 = 56
sumar = 99

puts "El resultado es: #{sumar valor1, valor2}"
#Como solo le paso el valor1, coge el de por defecto (0)
puts "El resultado es: #{sumar valor1,sumar}"

def sumar (valor1,valor2=0,valor3)
  puts "#{valor1}, #{valor2},#{valor3}"
  valor1+valor2+valor3
end
  
  puts sumar 2,5
  puts sumar 3,3,3

#metodos primera letra siempre en MINUSCULAS


variableExterna=1
def metodo
  #La siguiente linea da error ya que no hay visibilidad esde main al metodo
  #puts "La variable externa #{variableExterna}"
  variableInterna = "Pepe"
end
 metodo 
 
#puts variableInterna   NO SE PUEDE HACER


def metodo (*valores)
  puts valores 
  puts "------"
  puts valores[0] #valores es un array  
end
metodo "hola", "como estas", "yo bien", "etc..."
metodo

def sumaCompleta (*valores)
  resultado = 0
    for valor in valores
        resultado += valor #es igual resultado = resultado + valor
           end
   #return resultado
   resultado
  end

puts sumaCompleta 1,2,3,8
puts sumaCompleta 99,23
puts sumaCompleta





