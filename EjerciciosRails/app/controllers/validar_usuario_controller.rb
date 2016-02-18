class ValidarUsuarioController < ApplicationController
  
  def validarUsuario
    if params[:usuario].size<6 && params[:password].length<5
      
      @valido = "Usuario correcto"
     else
       @valido = "Usuario incorrecto"
    end
  end
end


 