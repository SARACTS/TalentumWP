class Persona
  attr_accessor :id, :nombre 
  def initialize (nombre)
        @nombre = nombre
  end
  def to_s
    "El nombre es: #{@nombre}"
  end 
end