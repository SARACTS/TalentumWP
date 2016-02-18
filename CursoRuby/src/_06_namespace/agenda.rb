
    class ModeloAgenda::Direccion
    
    attr_accessor :via, :nombreVia, :numero, :piso, :cp
    
  def initialize (via, nombreVia, numero, piso, cp) 
    @via = via
    @nombreVia = nombreVia
    @numero = numero
    @piso = piso
    @cp = cp
        
  end   
  end
  
  def to_s
    "#{@via},#{@nombreVia},#{@numero}, #{@piso}, #{@cp}"
  end
  
  
class ModeloAgenda::Contacto
  
  attr_accessor :nombre, :telefono, :direccion
  
  def initialize (nombre, telefono, direccion)
        
    @nombre = nombre
    @telefono = telefono 
    @direccion = direccion
    
    
  end
  
  def to_s #una clase con atributos y setter y getter se llaman rubybeans  
      
     "#{@nombre}, #{@telefono}, #{@direccion}"
     
   end
  end
