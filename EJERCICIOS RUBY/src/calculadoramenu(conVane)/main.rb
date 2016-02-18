load 'calculadoramenu.rb'


pregunta = nil

begin  
  puts "¿Qué quieres hacer? \n Elige 1 si desea sumar \n Elige 2 si desea restar \n Elige 3 si desea multiplicar \n Elige 4 si desea dividir \n Elige 5 si desea SALIR"
  respuesta =  gets.strip.to_i

case respuesta    
when  1 then
  puts "Introduce el número 1"  
  valor1 =  gets.strip.to_f;
  puts "Introduce el número 2"
  valor2 =  gets.strip.to_f;   
  puts " El resultado de la suma es #{Calculadora.suma(valor1, valor2)}"

when 2 then
  puts "Introduce el número 1"  
  valor1 =  gets.strip.to_f;
  puts "Introduce el número 2"
  valor2 =  gets.strip.to_f;    
  puts " El resultado de la resta es #{Calculadora.resta(valor1, valor2)}"


when 3 then
  puts "Introduce el númfero 1"  
  valor1 =  gets.strip.to_f;
  puts "Introduce el número 2"
  valor2 =  gets.strip.to_f;    
  puts " El resultado de la multiplicación es #{Calculadora.multiplicar(valor1, valor2)}"


when 4 then
  puts "Introduce el número 1"  
  valor1 =  gets.strip.to_f;
  puts "Introduce el número 2"
  valor2 =  gets.strip.to_f;    
  puts " El resultado de la división es #{Calculadora.division(valor1, valor2)}"
  
when 5 then
  
  puts "ADIÓS"
  
else
  puts " Número incorrecto, introduzca del 1 al 5, por favor" 
respuesta =  gets.strip

end
end







