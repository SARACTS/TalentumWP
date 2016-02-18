

class Ordenador
  
  attr_accessor :discoduro, :ram, :microprocesador, :fuentealimentacion, :tarjetagrafica, :direccion
  def initialize (discoduro, ram, microprocesador, fuentealimentacion, tarjetagrafica, direccion) 
    
    @discoduro = discoduro
    @ram =  ram
    @microprocesador = microprocesador
    @fuentealimentacion =  fuentealimentacion
    @tarjetagrafica = tarjetagrafica
    @direccion =  direccion
    
  end
  
  def total
    @discoduro.precio.to_f+@ram.precio.to_f+@microprocesador.precio.to_f+@fuentealimentacion.precio.to_f+@tarjetagrafica.precio.to_f  
  end
  
  def to_s 
        
       "#{@discoduro} #{@ram} #{@microprocesador} #{@fuentealimentacion} #{@tarjetagrafica} total:#{self.total}\n"
       
end

end
