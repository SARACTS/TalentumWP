#Director hereda de persona porque director es una persona , no director tiene una persona

class Director < Persona
  attr_accessor :edad  
  def initialize (nombre, edad) 
    super nombre #con super  toma las propiedades de la clase heredada en este caso de PERSONA
    @edad = edad
  end
  def to_s
    "#{super},y la edad #{@edad}"
  end
  
end