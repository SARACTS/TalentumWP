#clase padre de la que hereda el resto
class Componente
  
  attr_accessor :precio
  
  def initialize(precio)
    @precio =  precio
  end
  
  def to_s
    "#{@precio}"
  end
end