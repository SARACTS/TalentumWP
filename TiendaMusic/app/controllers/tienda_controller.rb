class TiendaController < ApplicationController
  
  #En la clase se realiza los metodos del CRUD
        def index
          @discos = Tiendas.all
        end
  
        def read
          
            @discos = Tiendas.all
            if @discos.size >0 
              puts @discos[0].titulo
              puts @discos.first.id
            end          
         end  
  
  
  
        def alta
          
            nombre = params[:nombre]
            artista = params[:artista]
            year = params[:year]
            #Añadimos los parametros al Hash para poder meterlos posteriormente en la BBDD y mostrarlos
            tiendaHash = {}
            tiendaHash[:nombre] = nombre
            tiendaHash[:artista] = artista
            tiendaHash[:year] = year
            
            @disco = Tiendas.create(tiendaHash)  
            #Aqui le pasamos el hash al objeto creado que sería una tabla de la BBDD asi se inserta en la tabal un registro 
              if @disco.errors.any? then
                @disco.errors.full_messages.each do |mensaje_error|
                  puts "Mensaje de error: #{mensaje_error}"
                end
              end  
              
              @discos = Tiendas.all
              render :index
         end
         
         
       
            
          
          def update_vista
            @disco =nil
            id = params[:id].to_i
            @disco = Tiendas.find id
            
           end
    
   
          
          def update
            id = params[:id].to_i
            nombre = params[:nombre]
            artista = params[:artista]
            year = params[:year]
            
            tiendaHash = {}
            tiendaHash[:nombre] = nombre
            tiendaHash[:artista] = artista
            tiendaHash[:year] = year
            
            
            @disco = Tiendas.find id
            update = @disco.update_attributes(tiendaHash)
            
            if update              
              puts "Registo actualizado"       
              @discos = Tiendas.all
              render :index
            else 
              puts "Registro no actualizado"
              render :update_vista                
            end
          end
          
          
          
          def delete
              id = params[:id].to_i
              
              Tiendas.delete id
              @discos = Tiendas.all
              render :index                
          end
            
                
                
         def busqueda_year
          year = params[:year]
          puts "AÑO"
          @discosEncontrados = Tiendas.where(:year => year)
          puts @discosEncontrados
          render :busquedas
        end       
        
        
         def busqueda_artista
          artista = params[:artista]
          puts "Artista"
          @discosEncontrados = Tiendas.where(:artista => artista)   #(artista: artista) similar
          puts @discosEncontrados
          render :busquedas
        end        
             
                      
                
      end 
      
      
       
       
       
     
      
         
        
  
  
  
