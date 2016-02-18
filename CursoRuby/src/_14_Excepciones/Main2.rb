
def funcionInversa (numero)
  raise ArgumentError, "Solo admitimos numero" unless numero.is_a? Numeric
  raise Exception, "No admito ceros" if numero == 0
  1.0/numero
  end
  
begin
  puts funcionInversa 5
  puts funcionInversa "felix"
rescue ArgumentError => ae
  puts "Ha ocurrido un error de argumentos"
  puts ae.message  
rescue Exception => e #Clase padre de todas las excepciones  
  puts "Ha ocurrido un error al introdudir el dato "
  puts e.message
ensure
  puts "Este codigo de aqui se ejecutara siempre " +
        "tanto si ha habido error como si no"
end

puts "FIN DEL PROGRAMA"
