class ZapatoController < ApplicationController
  
  def index
    @zapatos = Zapato.all
  end
  
  #alta vista no hace falta crearlo
  def alta_vista
        
  end
  def new
    talla=params[:talla].to_i
    color=params[:color]
    tipo=params[:tipo]
    zapatosHash= {}
    zapatosHash[:talla] = talla
    zapatosHash[:color] = color
    zapatosHash[:tipo] = tipo
    
    #creamos un registro en la bbdd con los parametros que tenemos dentro del Hash
    Zapato.create(zapatosHash)
    @zapatos= Zapato.all
    render "index"
  end
  def borrar
    id = params[:id].to_i
    Zapato.delete id
    @zapatos=Zapato.all
    render :index
  end
  def modificar_vista
    id=params[:id].to_i
    @zapato = Zapato.find id
    
  end
  def modificar
    id = params[:id].to_i
    tallaNueva=params[:talla].to_i
    colorNueva=params[:color]
    tipoNueva=params[:tipo]
    
    zapatosHash= {}
    zapatosHash[:talla] = tallaNueva
    zapatosHash[:color] = colorNueva
    zapatosHash[:tipo] = tipoNueva
    
    zapatoABuscar = zapato.find id
    zapatoABuscar.update_attributes(zapatosHash)
    @zapatos= Zapato.all
    render :index
  end
  
end
