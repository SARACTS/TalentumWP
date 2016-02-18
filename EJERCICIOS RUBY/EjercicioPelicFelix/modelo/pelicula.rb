class Pelicula
  
  attr_accessor :id, :titulo, :director, :actores
  def initialize (titulo, director, actores)
   # if director.instance_of? Director then

    @titulo = titulo #titulo -> string
    @id = nil
    @director =director #director -> objeto de la clase Director
    @actores = actores #actores -> array de la clase actor
   # end       
  end 
  
  def to_s
   # actores_to_s = "["
    #for actor in @actores
     # actor_to_s += actor.to_s
      
    #end
    #actores_to_s += "]"
  
  #end
   
    "#{@id}, #{@titulo}, #{@director}, #{@actores }" #seria {actore_to_s}
  end
end