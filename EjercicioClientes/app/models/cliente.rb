class Cliente
  
  attr_accessor :nombre, :apellidos, :edad, :telefono
    
  def initialize (nombre, apellidos, edad, telefono)
    @nombre = nombre
    @apellidos = apellidos
    @edad =  edad
    @telefono = telefono
  end
  
  def to_s
    "Nombre: #{@nombre}\n Apellidos: #{@apellidos}\n Edad: #{@edad}\n Telefono: #{@telefono}"
  end
  
end