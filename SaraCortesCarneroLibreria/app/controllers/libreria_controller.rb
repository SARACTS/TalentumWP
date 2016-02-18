class LibreriaController < ApplicationController
  
              def index
                #Varia vacia para que no de error
                @libreria = {}
              end
              
              
              
              
              def read
          
              @libreria = Libreria.all
              if @libreria.size >0 
                puts @libreria[0].titulo
                puts @libreria.first.id
              end          
             end  
              
              
              
              
              def alta
                #Le pasamos los parametros
                genero = params[:genero]
                titulo = params[:titulo]
                autor = params[:autor]
                #Añadimos los parametros al Hash para poder meterlos posteriormente en la BBDD y mostrarlos 
                libreriaHash = {}
                libreriaHash[:genero] = genero
                libreriaHash[:titulo] = titulo
                libreriaHash[:autor] = autor
                
                #Aqui le pasamos el hash al objeto creado que sería una tabla de la BBDD 
                @libro = Libreria.create(libreriaHash)
                  
                   @libreria = Libreria.all
                    render :index                   
               end
              
          
               def baja                  
                  id = params[:id].to_i
                  Libreria.delete id
                  @libreria = Libreria.all
                  render :index                                 
               end
               
               
          
                 def update_vista
                    @libro =nil
                    id = params[:id].to_i
                    @libro = Libreria.find id
                end            
              
              
                def update    
                  
                  id = params[:id].to_i
                  genero = params[:genero]
                  titulo = params[:titulo]
                  autor = params[:autor]
                  
                  libreriaHash = {}
                  libreriaHash[:genero] = genero
                  libreriaHash[:titulo] = titulo
                  libreriaHash[:autor] = autor
                        
                  @libro =  Libreria.find id
                  update = @libro.update_attributes(libreriaHash)
                                                     
                          if update              
                          puts "Registo actualizado"       
                          @libreria = Libreria.all
                          render :index
                        else 
                          puts "Registro no actualizado"
                          render :update_vista                
                        end
                 end

                def busqueda_genero
                  genero = params[:genero]
                  puts "Género"
                  @librosEncontrados = Libreria.where(:genero => genero)   #(genero: genero) similar
                  puts @librosEncontrados                  
                  render :index
                end      
                
                
                 def busqueda_titulo
                  titulo = params[:titulo]
                  puts "Título"
                  @librosEncontrados = Libreria.where(:titulo => titulo)   #(titulo: titulo) similar
                  puts @librosEncontrados
                  render :index
                end        
                
                 def busqueda_autor
                  autor = params[:autor]
                  puts "Autor"
                  @librosEncontrados = Libreria.where(:autor => autor)   #(autor: autor) similar
                  puts @librosEncontrados
                  render :index
                end        
  
  
          
  
end
