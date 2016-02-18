class GestionPelicula
  
  
   
    def initialize(dao)
      @peliculaDao = dao
      #@peliculaLog = log  
    end
    
    
    def insert(pelicula)
      
     if @peliculaDao.listar.length  <10 then
      @peliculaDao.insert pelicula
      else 
        puts "No hay espacio disponible"
      end
      #@peliculaLog.generarLog "Pelicula insertada: #{pelicula}"
    end 
    
    
    def update(pelicula)
      @peliculaDao.update pelicula
      #@peliculaLog.generarLog "Pelicula modificada/actualizada"
      
    end
  
  
    def delete(almacenPelicula)
        for id in almacenPelicula do
          @peliculaDao.delete id
        end
          #@peliculaLog.generarLog "Pelicula borrada"
      
    end
      
      
      
     def listar
      @peliculaDao.listar
     end
  

  
end