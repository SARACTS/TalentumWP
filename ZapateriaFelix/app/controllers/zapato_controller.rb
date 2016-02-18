class ZapatoController < ApplicationController
  
  def index
    @zapatos = Zapato.all  
  end
  
  #def alta_vista
    
  #end
  
  def new
    talla = params[:talla].to_i
    color = params[:color]
    tipo = params[:tipo]
    
    zapatosHash = {}
    zapatosHash[:talla] = talla
    zapatosHash[:color] = color
    zapatosHash[:tipo] = tipo
    
    Zapato.create(zapatosHash)
    @zapatos = Zapato.all
    
    render "index"
    
  end
  
  def borrar 
    id = params[:id].to_i
    Zapato.delete id
    @zapatos = Zapato.all
    render :index
  end
  
 def modificar_vista
   id = params[:id].to_i
   @zapato = Zapato.find id 
 end
  
  def modificar
    id = params[:id].to_i
    tallaNueva = params[:talla].to_i
    colorNuevo = params[:color]
    tipoNuevo = params[:tipo]
    
    
    zapatosHash = {}
    zapatosHash[:talla] = tallaNueva
    zapatosHash[:color] = colorNuevo
    zapatosHash[:tipo] = tipoNuevo
    
    
    zapatoABuscar = Zapato.find id
    
    zapatoABuscar.update_attributes(zapatosHash)
    @zapatos = Zapato.all
    render :index
  end
  
end
