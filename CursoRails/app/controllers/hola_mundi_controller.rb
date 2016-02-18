class HolaMundiController < ApplicationController
     #cada vez que lega una peticion web a este controlador se creara un objeto nuevo, por lo que hay que tener cuidado con las
     #variables de instancia ya que perderemos su valor en cada llamada a esta clase (en este caso cada vez que pulsemos f5)
     #las variabkles de isntancia nos sirven para comunicarnos con las vistas
     
     #las variables de instancia se resetean las de clase son persistentes
        @@contadorClase = 0  

    def initialize
      @contadorInstacia = 0
      @contadorInstaciaI = 0 
    end
    
    def saludame
      puts "Saludame -> Entrando en el metodo"
      @saludo = "Hola Mundo!!"
      #I18n.locale =  :es
      #@saludo= I18n.t hello
      @@contadorClase +=1
      @contadorInstacia +=1
      puts "El contador de clase vale #{@@contadorClase}"
      puts "El contador de instancia vale #{@contadorInstacia}"
    end
    
    def saludameIngles
      puts "Saludame -> Entrando en el metodo"
        #I18n.locale =  :en
      #@saludo= I18n.t hello
      @saludo = "Hello Word"
      @contadorInstaciaI +=1
      puts "El contador de instancia vale #{@contadorInstaciaI}"
      #render 'saludame'
    end
end

