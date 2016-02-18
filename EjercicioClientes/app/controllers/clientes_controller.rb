
class ClientesController < ApplicationController
  
  @@clientes = []

  def index  
    @clientesdao = @@clientes
  end
  
  def alta
    cliente1 = Cliente.new(params[:nombre], params[:apellidos], params[:edad], params[:telefono])
    @@clientes << cliente1
    @clientesdao = @@clientes
    render :index
  end
  
  def detallarCliente
    apellidos = params[:apellidos]
    
    for cliente in @@clientes
      if apellidos == cliente.apellidos then
        @cliente = cliente       
      end
    end
  end
  
end
