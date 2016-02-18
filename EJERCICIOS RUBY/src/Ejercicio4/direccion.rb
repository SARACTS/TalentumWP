class Ordenador::Direccion #clase para generar la direccion mac del equipo
  
  
   attr_accessor :mac_address
    def initialize (mac_address)
       
    @mac_address = mac_address
    end 
    def to_s
    "#{@mac_address}"
  end
end