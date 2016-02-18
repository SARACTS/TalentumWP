variable1 = 2

if (variable1 == 1) then
  puts "Es un uno pues va a ser que si!"
end

if variable1 != 1 then
  puts "Pues va a ser que no es dos!"
end

if variable1 == 2 then 
  puts "Pues va a ser que si porque lo digo yo!"
  else
  puts "Llegó el else!"
end

if variable1 == 1 || variable1 == 2
  puts "Pues va a ser que es un uno o es dos"
end

if variable1 >= 0
  puts "Pues va a ser positivo, que nunca negativo!"
end

if variable1 > 0 then 
    puts "Pues va a ser que es mayor que cero!"
  elsif variable1 == -2 then
  puts "Es menor que dos!"
  elsif variable1 <0 then
    puts "Menor que cero"
  else
    puts "por huevos es cero"
end

puts "por huevos es cero" if variable1 == 0
puts variable1==0?"Es cero": "No es cero"
#puts variable1==0?"Es cero": variable1>0?30"Es mayor que cero":"Es menor que cero"

estaVariablePoseeUnNil = nil
if !estaVariablePoseeUnNil
  puts "La variable es nula!"
end



variable =  nil
if !variable
  puts " La variable es nula"
end

unless variable # lo mismo que if con !
  puts " variable es nula"
end

variable = 3
if variable == 1 then
  puts "es uno"
elsif variable == 2 then
  puts " es dos"
elsif variable == 3 then
  puts "es tres"
else 
  puts " noes ni uno ni dos ni tres"
end


case 
when variable == 1 then
  puts " Es uno con el case"
when variable == 2 then
  puts " Es dos con el case"
else 
  puts "No es ni 1 ni 2 con el case"
    
end

case variable #case es como switch 
when 1 then
  puts " Es uno "
when 2 then
  puts " Es dos "
when 3 then
  puts " Es tres"
else 
  puts " ni idea"
end

case variable
when 1...10 then
 puts "El valor de la variable (#{variable}) sta entre 1  y 10"
when 11..20 then
  puts " Esta entre 11 y 20"
else
  puts " ni idea "
end

  