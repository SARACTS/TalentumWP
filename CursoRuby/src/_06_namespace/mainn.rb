  module ModeloAgenda
    
  end
load 'agenda.rb'


direccion1 = ModeloAgenda::Direccion.new("av", "europa", 125, 1, 28341)
contacto1= ModeloAgenda::Contacto.new("Sara", 62565525, direccion1)

puts contacto1

direccion2 = ModeloAgenda::Direccion.new("av", "españa", 5, 1, 25641)
contacto2= ModeloAgenda::Contacto.new("Soraya", 5865525, direccion2)

puts contacto2

direccion3 = ModeloAgenda::Direccion.new("c/", "america", 8, 6, 26895)
contacto3= ModeloAgenda::Contacto.new("Diana", 6598261, direccion3)

puts contacto3

#otra manera :)

contacto4= ModeloAgenda::Contacto.new("Ana", 65998263, ModeloAgenda::Direccion.new("c/", "esa", 18, 62, 28952))

puts contacto4