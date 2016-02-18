class Pelicula
  attr_accessor :id, :titulo, :director, :actores
   
   def initialize (titulo, director, actores)
     
     @titulo =  titulo
     @director = director
     @actores = actores
     
   end
   
   def to_s
     
    "#{id} #{titulo} #{director} #{actores}"
   end
   
end

