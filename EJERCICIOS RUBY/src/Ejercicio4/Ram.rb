class Ordenador::Ram < Componente
    attr_accessor :capacidad,:velocidad,:marca
  
  def initialize (capacidad, velocidad, marca, precio)
        
        super(precio)
    @capacidad = capacidad
    @velocidad = velocidad
    @marca =  marca
        
end
def to_s #una clase con atributos y setter y getter se llaman rubybeans  
        
       "#{@capacidad},#{@velocidad},#{@marca},#{@precio}\n"
     end
end 