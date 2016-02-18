class AdiosMundoCruelController < ApplicationController
  
  #pasos para generar manualmente un controller
  #1) crear el archivo adios_mundo_crue_controller.rb
  #2)crear la vista adios_mundo_cruel/despedir.htl.erb
  
  
  def despedir
    puts "Esto es una prueba de generar manualmente un controlador"
    @despido = "Adios Mundo Cruel"
    
  end
end