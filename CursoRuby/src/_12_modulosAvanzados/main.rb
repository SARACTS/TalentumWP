load 'agenda/modelo/Persona.rb'
load 'videoclub/modelo/Persona.rb'
load 'agenda/negocio/gestorPersonas.rb'


personaAgenda = Agenda::Modelo::Persona.new
personaVideoclub = Videoclub::Modelo::Persona.new

personaAgenda.edad=34
personaAgenda.nombre= "pepe"

personaVideoclub.dni= "6446869D"
personaVideoclub.nombre= "Ramon"
