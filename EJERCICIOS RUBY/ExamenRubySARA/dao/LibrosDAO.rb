class LibrosDAO
  
  @@almacenLibros = []
  @@id = 1
  
      def insert (libro)
        libro.id = @@id
        @@id +=1
        @@almacenLibros << libro
      end
      
      
      
      def delete (libro)
        for libroActual in @@almacenLibros
          if libroActual.id == libro then
            @@almacenLibros.delete libroActual
            return
          end
        end         
      end
    
    
      
      
      def update (libro)
      
        idBuscarNuevo = libro.id
        i=0
          for libroActual in @@almacenLibros
            if libroActual.id == idBuscarNuevo then
              @@almacenLibros[i]= libro
              return
            end
              i+=1
          end
       end
    
    
    
    
        def listar
       @@almacenLibros
       end
       
        
   
    
     
end
     
     
     
      
    
    
    
    
    
    
  
