class GestionPeliculas
 
 attr_accessor :tamañoMaximo, :peliculasDao
 
   def initialize
     @tamañoMaximo = 10   
     
   end
 
 #Params: => pelicula de la clase Pelicula
 #Output: => true si ha sido insertadad / => false en caso de que no haya espacio disponible en memoria 
   def insertarPelicula pelicula
        #puts "insertar pelicula #{@peliculasDao.listar}"
       if @peliculasDao.listar.size < @tamañoMaximo
          @peliculasDao.insert pelicula
       else 
       return 
       end
     end
     
    
   def borrar idPelicula
     @peliculasDao.borrar idPelicula 
   end  
   
   def modificar (pelicula)
      @peliculasDao.modificar pelicula
   end   
   
   
    def listar
      @peliculasDao.listar
    end
 
 end