class Calculadora
  
  
    def self.suma valor1,valor2
    suma= valor1+valor2
    puts suma
  end
    
  
  def self.resta valor1,valor2
    resta= valor1-valor2
    puts resta
  end  
  
  
  def self.multiplicar valor1,valor2
    multiplicar= valor1*valor2
    puts multiplicar
  end  
  
  
  def self.division valor1,valor2
    if valor2 == 0
      mostrar = "ERROR 0"
      
  else
    division= valor1/valor2
    puts division
  end 
  end 
  end

