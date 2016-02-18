load 'Componentes.rb';
load 'Ordenador.rb';
load 'DiscoDuro.rb';
load 'FuenteAlimentacion.rb';
load 'Microprocesador.rb';
load 'Ram.rb';
load 'direccion.rb'
load 'TarjetaGrafica.rb'
load 'modelo_persona/agenda.rb'
load 'dao/OrdenadorDAO.rb'


  discoduro1=Ordenador::DiscoDuro.new("500mb","20","toshiba", 30) # OBJETO = discoduro1 CLASE DiscoDuro.new  VARIABLES es  ("....")
  ram1=Ordenador::Ram.new("550 ", "15", "toshiba", 20)
  microprocesador1=Ordenador::Microprocesador.new("560", "kokito", 20)
  fuentealimentacion1=Ordenador::FuenteAlimentacion.new("500w", "koala", 40)
  tarjetagrafica1=Ordenador::TarjetaGrafica.new("600", "kokito",60)
  direccion1=Ordenador::Direccion.new(986532)
  ordenador1=Ordenador.new(discoduro1, ram1, microprocesador1, fuentealimentacion1, tarjetagrafica1, direccion1)
puts ordenador1

  direccion2 = Agenda::Direccion.new("av", "europa", 125, 1, 28341)
  contacto2= Agenda::Contacto.new("Sara", 62565525, direccion2)

puts contacto2



puts "Inicializando..."
negocio = GestionPersonasLN.new(OrdenadorDAO.new)

negocio.guardarPersona(Persona.new)
negocio.borrarPersonas [3,4]
persona = negocio.buscarPersona 1