class Ordenador::Microprocesador < Componente
  
    attr_accessor :velocidad,:marca
  
  def initialize (velocidad, marca, precio)
        
  super(precio)
    @velocidad = velocidad
    @marca =  marca
        
end
def to_s #una clase con atributos y setter y getter se llaman rubybeans  
        
       "#{@velocidad}, #{@marca}, #{@precio}\n"
     end
end 