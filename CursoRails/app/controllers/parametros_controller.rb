class ParametrosController < ApplicationController
  
  def pasarParametros
    if params[:nombre] && params[:apellidos]
    @saludo = "Hola #{params[:nombre]} #{params[:apellidos]}"
    else
     @saludo =  "Hola desconocido" 
    end
  end
  
  
end
