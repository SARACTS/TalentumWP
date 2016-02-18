load 'negocio/Calculadora.rb'
#inicializacion de variables
#TODO: poner una opcion para guardar el historial de operaciones realizadas

dato1=nil
dato2=nil
historiadelasoperaciones[]

begin
  def generarMenu
    #Mostrar menu
    puts "Usuario: Indica la operacion"
    puts "\t1-Sumar"
    puts "\t2-Restar"
    puts "\t3-Multiplicar"
    puts "\t4-Dividir"
    puts "\5-Salir"
    puts "\t6-Historial de todas las operacioner"
    puts "\n:>"
  end
  
  #Pedir el menu de uso de la calculadora
  generarMenu
  #Recoger el resultado del usuario
  resultadoDelUsuario = gets.to_i
  #Comprobar el resultado del usuario y evaluar si necesito sumar, restar...
  case resultadoDelUsuario
  when 1 #El 1 es sumar
    #recoger dato1 y dato2
    print "\nPrimer dato:>"
    dato1=gets.to_f
    print "\nSegundo dato:>"
    dato2=gets.to_f
    #sumar
    #Operar y mostrar
    puts "Resultado #{Calculadora.sumar dato1,dato2}"
    
  when 2 #El 2 es restar
    #recoger dato1 y dato2
    print "\nPrimer dato:>"
    dato1=gets.to_f
    print "\nSegundo dato:>"
    dato2=gets.to_f
    #restar
    #Operar y mostrar
    puts "Resultado #{Calculadora.restar dato1,dato2}"
  when 3 #El 3 es multiplicar
    #recoger dato1 y dato2
    print "\nPrimer dato:>"
    dato1=gets.to_f
    print "\nSegundo dato:>"
    dato2=gets.to_f
    #multiplicar
    #Operar y mostrar
    puts "Resultado #{Calculadora.multiplicar dato1,dato2}"
  when 4 #El 4 es dividir
    #recoger dato1 y dato2
    print "\nPrimer dato:>"
    dato1=gets.to_f
    print "\nSegundo dato:>"
    dato2=gets.to_f
    #dividir
    #Operar y mostrar
    puts "Resultado #{Calculadora.dividir dato1,dato2}"
  when 5
    puts" Fin del programa"
    salir=true
   else
     puts "Opcion incorrecta"
  end
end while  resultadoDelUsuario != 5



