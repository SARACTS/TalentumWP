class PeliculaDAO
  
    def initialize
      @almacenPeliculas = []
      @id = 1
    end
    
    def insert  pelicula
      pelicula.id = @id
      @id +=1
      @almacenPeliculas << pelicula
    end 
    
    def borrar idPelicula
      @almacenPeliculas.delete_if {
        |pelicula|
         pelicula.id == idPelicula 
      }
    end 
    
    def modificar nuevaPelicula
      idPeliculaNueva = nuevaPelicula.id
      i = 0
        for pelicula in @almacenPeliculas
            if pelicula.id == idPeliculaNueva then
              @almacenPeliculas[i] = nuevaPelicula
              return 
            end
        i+=1
        end      
    end
    def listar
         @almacenPeliculas
    end
end