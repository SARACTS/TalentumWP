
class Ordenador::DiscoDuro < Componente
    attr_accessor :capacidad,:velocidad,:marca
# @@id_discos_duros = 0 
  
  def initialize (capacidad, velocidad, marca, precio)
 #   @@id_discos_duros +=1
  #  id= "HD- #{@@id_discos_duros}"
    
    super(precio)        
    @capacidad = capacidad
    @velocidad = velocidad
    @marca =  marca
    
      end  
        def to_s #una clase con atributos y setter y getter se llaman rubybeans  
        
       "#{@capacidad} #{@velocidad} #{@marca} #{@precio}\n"
       
end
end 
