class PeliculaDAO
  @@almacenPelicula = []
  @@id = 1
  
  
    def insert(pelicula)
      pelicula.id = @@id
      @@id +=1
      @@almacenPelicula << pelicula   
    end
  
    def update (pelicula)
      
      idBuscarNueva = pelicula.id
      i= 0
        for peliculaActual in @@almacenPelicula
            if peliculaActual.id == idBuscarNueva then
              @@almacenPelicula[i]=pelicula
              return 
            end
        i+=1
        end      
     end
     
     def delete(pelicula)
       for peliculaActual in @@almacenPelicula
         if peliculaActual.id == pelicula then
           @@almacenPelicula.delete peliculaActual
           return
         end
       end
     end
     
     
     def listar
       @@almacenPelicula
     end
         
        
     
   end 
    
  
 
  
  
