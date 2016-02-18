class ClientesController < ApplicationController
  def alta
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellidos = params[:apellidos]
    cliente.edad = params[:edad]
    cliente.telefono = params[:telefono]
    dao= DaoCliente.new
    dao.alta cliente
    @clientes = dao.getClientes
    render :index #tambien vale "index" entre comillas o con : 
  end

        def detalle
          id = params[:id].to_i
          @cliente=DaoCliente.new.getClienteByid id
          puts @cliente
        end

      def index
        @clientes = DaoCliente.new.getClientes
      end
  
  


     def delete
         id= params[:id].to_i
         DaoCliente.new.delete id 
         @clientes = DaoCliente.new.getClientes #actualiza despues de borra la lista de clientes quedando solo los que no has borrado 
         render :index
     end          
    
  
  
      def updateVista
        id = params[:id].to_i
        @cliente = DaoCliente.new.getClienteByid id 
      end
    
    
    
    def update
      id = params[:id].to_i
      @cliente = DaoCliente.new.getClienteByid id
      
      @cliente.nombre = params[:nombre]
      @cliente.apellidos = params[:apellidos]
      @cliente.edad = params[:edad]
      @cliente.telefono = params[:telefono]
      
      render :detalle 
    end



end


  
    
  
    
  

