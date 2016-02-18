class Calculadora
  
 
  
    def suma valor1,valor2
    suma= valor1+valor2
    puts suma
  end
    
  
  def resta valor1,valor2
    resta= valor1-valor2
    puts resta
  end  
  
  
  def multiplicar valor1,valor2
    multiplicar= valor1*valor2
    puts multiplicar
  end  
  
  
  def division valor1,valor2
    if valor2 == 0
      mostrar = "ERROR 0"
      
  else
    division= valor1/valor2
    puts division
  end 
  end 
  end