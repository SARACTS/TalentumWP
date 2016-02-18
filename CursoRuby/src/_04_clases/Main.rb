load 'Persona.rb' #esto es equivalente a copyparte del fichero Persona.rb pero asi es mas legible y no es recomendable hacerlo todo en un mismo fichero

persona = Persona.new("523456325s","Pepe","Hombre",23)
#nombre de la clase.new para generar memoria y crear objeto , INVOCANDO EL INICIALIZE implicitamente
persona2 = Persona.new("966456326k","Manuel","Hombre",45)


#esta linea da error ya que no existe el constructor (initialize) por defento o sin parametro
#persona3 = Persona.new

puts "El número de perdonas creado es : #{Persona.getNumeroDePersonas}"

persona.setColorOjos "Azules"  # se le atribuye a persona
puts persona.getColorOjos
puts persona.nombre


#estos dos metodos existen despues de crear el attr_accessor

persona.nombre
persona.nombre= "felix"
puts persona.nombre

persona.colorOjos = "verdes"
puts persona.colorOjos

puts persona.dni
puts persona2.dni

#podemos acceder pero no modificar el dni 
#persona.dni = "otrodni"

puts persona #posicion de memoria

persona.saludar 
persona2.saludar

#persona edad 23
#persona2 edad 45

persona2 = persona
persona2.edad= 44
#La edad de ambas es 44

