class OrdenadorDAO
    
    @@almacenOrdenador = []
    @@id=1
    
    def insert(ordenador)
      persona.id = @@id
      @@id+=1
      @@almacenOrdenador << ordenador 
    end
    
    
    def update(ordenador)
      idABuscar = ordenador.id
      
      for ordenadorActual in @@almacenOrdenador
        if ordenadorActual.id == idA_Buscar then  #caso 1 con el if
          @@almacenOrdenador[i]= ordenador
          return true
        end
        i+=1
      end
            false
    end
    
    
    def delete(idOrdenador)
      for ordenadorActual in @@almacenOrdenador
        if ordenadorActual.id == idOrdenador then  #caso 1 con el if
          @@almacenOrdenador.delete ordenadorActual
          return 
        end
      end
    end
    
    def list
      
      @@almacenOrdenador
       
    end
  
  
end