class DaoCliente
    @@clientesHash = {}
    @@id = 0;
    
      def alta cliente
        cliente.id = @@id
        @@clientesHash[cliente.id] = cliente
        @@id +=1
      end
    
      def getClientes
        @@clientesHash.values
      end
      
      def getClienteByid id
        @@clientesHash[id]
      end
      
      
            
      def delete (id)      
          @@clientesHash.delete(id)
         end
      
      
      

          
     
   
     
end






      
       


    
      
      
      