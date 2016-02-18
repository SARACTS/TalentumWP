  
  class Persona # las clases son siempre la primera en mayuscula y con camel case
    
  
    #con esto estamos creando sus respecticos getter y setter  ( ""accesos"")  
    attr_accessor :nombre, :sexo, :edad 
    
    #con esto damos permisos de solo lectura, no de escritura
    attr_reader :dni
    
    #tambien tenemos de solo escritura
    #attr_writer 
    
    #Genero una variable de clase (puedo acceder desde las instancias)
    @@numero_de_personas = 0
    
    #Defino el método de clase para acceder al número de personas
    
    def self.getNumeroDePersonas #Self es un atajo para crear los metodos de clase (metodos publicos de clase)
     # puts "EL DNI es#{@dni}"
      @@numero_de_personas
    end
  
    
    def initialize(dni,nombre,sexo,edad) #siempre son asi initialize para inicializar/ este es el CONSTRUCTOR de clase
      #no es obligatorio initialize, ruby por defecto lo pone y lo coge de objet
      @dni  = dni #siempre con @, (definiendo un atriburto) esto es un atributo si no ponemos el @ seria una variable
      @nombre = nombre
      @sexo = sexo
      @edad = edad
      @colorOjos =  nil 
      @@numero_de_personas = @@numero_de_personas + 1
    end
    
    
    def setColorOjos colorOjos   #metodo set, el de establecer // existe el metodo get para recuperar
      @colorOjos = colorOjos
      
    end
    
    def getColorOjos # get recupera el atributo
      @colorOjos
     end
     
     def colorOjos= colorOjos   #en la definicion de un metodo no se pueden poner espacios
     
       @colorOjos = colorOjos
       
     end
     
     def colorOjos
       @colorOjos
     end
     
     def saludar
       puts "Hola a todos, soy una persona y me llamo #{@nombre}"
     end  
        
     
     def to_s #una clase con atributos y setter y getter se llaman rubybeans  
        
       "#{@dni}, #{@nombre},#{@edad},#{@sexo},#{@colorOjos}"
       
     end
      
   
    end