class Ordenador::FuenteAlimentacion < Componente 
    attr_accessor :potencia,:marca
  
  def initialize (potencia, marca, precio)
        super(precio)
    @potencia = potencia
    @marca =  marca
        
end
def to_s #una clase con atributos y setter y getter se llaman rubybeans  
        
       "#{@potencia}, #{@marca}, #{@precio}\n"
     end
end 
