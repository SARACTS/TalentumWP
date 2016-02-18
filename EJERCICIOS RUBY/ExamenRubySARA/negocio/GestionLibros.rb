class GestionLibros
  
  
    
    def initialize(dao)
      @librosDao = dao
    end
  
  
    def insert (libro)
      @librosDao.insert libro
    end  
    
    
    def delete (almacenIDLibros)
      for id in almacenIDLibros do
        @librosDao.delete id
      end    
    end
    
  
    def update (libro)
      @librosDao.update libro
    end
  
  
    def listar 
      @librosDao.listar
    end
  
  
   
  
  
end