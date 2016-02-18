# Esto es un comentario (#) en RUBY

=begin 
Comentario de 
varias lineas 
en RUBY  
=end

#variables ( buena praxis incializarla, no es obligatorio)
#no empiezan con ninguna palabra reservada
#son totalmente arbitrarias
#deben empezar por " _ " o por una letra NO pueden empezar por numeros 

variable1 = 1
puts variable1

variable1 = 2
puts variable1

#Buena praxis poner s ( para indicar string)/ i ( para indicar entero)
sVariable = "Variable de texto"
iVariable= 3

puts sVariable,iVariable
#mas recomendado dos puts individuales que separarlo por comas para sacarlo por pantalla/ imprimirlo

puts "El valor de la variable sVariable es: "+ sVariable
#puts "El valor de la variable iVariable es: "+ iVariable #asi no se puede porque no se peude sumar un numero a texto
puts "El valor de la variable iVariable es: "+ iVariable.to_s #se añade .to_s para concatenar ( convertir de Fixnum a String/ concatenarlos)
puts "El valor de la variable iVariable es: ".to_s + iVariable.to_s
puts "El valor de la variable sVariable es : #{sVariable}" # (MUY DE RUBY) se ha añadido una # para añadir sentencias en lenguaje ruby pe se podria llamar un metodo, GENERALMENTE METODOS

#podemos declarar strings con comillas simples
puts 'El valor de la variable sVariable es: #{sVariable}' #con comillas simples sirve para escribir exactamente lo que pone

#podemos inicializar las variables a nil (null/ la nada / atreyu)
variable = nil
puts "El valor de la variable sVariable es : #{variable}"

#Por conenciones el nombre de las variables se suelen
#poner en camel case o en snake case
#camel case
estoEsUnaVariable = "variable"  #la primera en minuscula y todas las letras iniciales siguientes en mayuscula (CAMEL CASE ES MAS LEGIBLE QUE TODO EN MINUSCULA)
#snake case
esto_es_una_variable = "variable" 

#CONSTANTES
#Se declaran poniendo la primera letra en MAYUSCULA
#RUBY es un lenguaje case sensitive
EstoEsUnaConstante = "SARA"
Constante= "RAMON"
Constantedelamuerte= "PEPE"
#Normalmente por convencion las constantes van
#todas en mayusuculas y en snake case
CONSTANTE ="ISABEL"
CONSTANTE_DE_LA_MUERTE = "MARTA"
puts CONSTANTE
puts CONSTANTE_DE_LA_MUERTE
puts "La constante #{CONSTANTE_DE_LA_MUERTE}"
#Las constantes en RUBY se pueden cambiar las referencia
#aunque nos daria un warning  ( normalmente en otros lenguajes no se pueden cambiar)

#Tenemos tambien algunas pseudo variables
#Son variables  predefinidas
#Nos dice la ruta del fichero
puts __FILE__

#Nos dice las lineas que llevamos
puts __LINE__

#Acumulaciones
valor1 = 3
valor1 = valor1 + 5
puts valor1
#Es una manera de acortar valor1 = valor1 + 5
valor1 +=5
puts valor1
valor1 -=3
puts valor1
valor1 *= 2
puts valor1
valor1/= 2
puts valor1
valor1 *= valor1
puts valor1


#Cosas equivalentes con los string

valor1 = "pepe"
valor1 += " te saludo"
puts valor1

valor1 = nil
#En caso de que no este asignado un valor a la variable se establece el valor 8 (en este caso hemos puesto 8, el que quieras poner de primeras )
#En caso contrario, es decir, que ya este asignado, no se cambiara el valor
valor1 ||= 8   # ||=  esto pregunta es igual a nulo????? / esta apuntado a null?
puts valor1
valor1 ||= 12
puts valor1


#En ruby podemos hacer asignaciones multiples
valor2 = valor3 = valor4 =98 #apuntan al mismo objetos
puts valor2,valor3,valor4

#Todas estas variables que hemos visto hasta ahora son variables de tipo local
#Ruby tb soporta variables globales, es decir, que son visibles desde cualquier parte de nuestro programa
#Se declara con el simbolo '$' delante
$variableGlobal = 50
puts "El valor de la variable global es :#{$variableGlobal}"


#Tipos basicos en RUBY

tipoFixnum = 3;
#tb tenemos bignum es mucho mas grande que fisnum (mas rango), no tenemso porque preocuparnos por las conversiones que tuby lo hace automatico
tipoString = "literal"
tipoFloat= 3.0 #poniendo un '.'
tipoTrue= true

puts tipoFixnum.class
puts tipoString.class
puts tipoFloat.class
puts tipoTrue.class

tipoFalse=  false
puts tipoFalse.class
tipoNil= nil
puts tipoNil.class  #hasta nil (nulo) es un objeto



#CONVERSIONES

puts "El numero " +3.to_s
puts "3".to_i + 5
puts "3pepe".to_i + 10
#Si no puede convertir el String a integer, devuelve un 0
puts "pepe3".to_i + 10  
puts 3.to_f
puts 2 + 3 * 5
puts "#{(2 + 3) * 5}"
# puts 2/ 0 ERROR de division por cero 
puts 2.0/0 #en los numeros reales, es infinito

















