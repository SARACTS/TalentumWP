class EjercicioFechasController < ApplicationController
  def getFechaActual
     fechaAux = Time.now
    @fechaActual =  fechaAux.strftime( "%d/%m/%Y %H:%M:%S")
    
    #la variable instancia comunica al controlador con la visata
    # en config  aplicacio.rb podemos cambiar el huso horario en el que te encuentras
    #%d representa el dia
    #%m representa el mes
    #%Y repesemta el año
    #%H la hora en24h
    #%M los minutos
    #%S los segundos   
  end
end