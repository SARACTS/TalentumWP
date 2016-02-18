class Registro < ActiveRecord::Base
 
   #Con esta linea validamos que no podamos meter en base de datos un titulo que este vacio
   #// que al atributo titulo exita, es decir, sea diferente de nil
   validates_presence_of :titulo, message: 'El título muñon, no puede estar vacio'
   #podemos validar porque no se repita un campo
   validates_uniqueness_of :titulo, message: 'El título debe ser único'
   #podemos hacer validaciones de tamaño
   validates_length_of :comentarios, :within => 5..200, message: 'El comentario debe tener de 5 a 200 caractere'
   #podemos utilizar otras opciones en vez de ':within'
   # ':minimun'  estable un tamaño minimo
   # ':maximun'  estable un tamaño maximo
     
     
    #Decimos que queremos utilizar el metodo como validador (VALIDACIONES PERSONALIZADAS) 
    validate :validacion_titulo_Nota
    def validacion_titulo_Nota
      if titulo != nil && titulo == "Nota" then
        errors.add(:titulo,"El titulo no puede ser 'NOTA' ")
      end
    end


end
