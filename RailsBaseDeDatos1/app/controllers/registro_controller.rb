class RegistroController < ApplicationController
  
      def new
        # es como el read del CRUD
        #registro.all nos devuelve todos los registros de la bbdd
        #al heredar de ActiveRecord, estarán automaticamente implementados
        #sus accesors (getter/setter)
        @registros = Registro.all
        if @registros.size >0
          puts @registros[0].titulo
          puts @registros.first.id
        end
      end
      
      def create
        titulo = params[:titulo]
        comentarios = params[:comentarios]
        parametrosHash = {}
        #La clave corresponde con el nombre de la columna de la bbdd
        parametrosHash[:titulo] =  titulo
        parametrosHash[:comentarios] =  comentarios
        
        #Aqui le pasamos el hash
        @registro = Registro.create(parametrosHash)
        #Registro.create puede devolverme errorer en caso de que haya habido algun error al insertar
        if @registro.errors.any? then
          puts"BDERROR: Error"
        end
        
        
        @registros = Registro.all
        render "new"
      end
      
      def delete
        id = params[:id].to_i
        
        #Registro.delete id (MANERA UNO)
        
        #El metodo delete borra x id. Tb le podemos pasar un array de ids 
        #Podemos también borrar por otros campos pero deberemos hacer una busqeuda primero
        #MANERA DOS:  esto nos devuelve una lista de coincidencias
        registrosEncontrados = Registro.where(:id =>id)
        registro = registrosEncontrados[0]
        registro.destroy  
        
        @registros =  Registro.all
        render "new"    
      end
      
      def update_vista
        @registro = nil  #es registro no registros porque solo se busca un unico registro para modificarlo  sino modificas más    
       id = params[:id].to_i
       @registro =  Registro.find id  
     end
     
     
     def update
       id = params[:id].to_i
       titulo = params[:titulo]
       comentarios = params[:comentarios]
       
       hash = {}
       hash[:id] = id
       hash[:titulo] = titulo
       hash[:comentarios] = comentarios
       
       @registro = Registro.find id
       update = @registro.update_attributes(hash)
       #update contiene un boolena de si ha ido bien o no
       #registro contiene el activerecord con los posibles errorer
       if update 
         puts " Registro actualizado "
            @registros = Registro.all
            render :new
      else 
             puts " Registro no actualizado "
            render :update_vista
       end
           # @registros = Registro.all
            #render :new
      end
  
      def buscar_por_comentario
        comentarios= params[:comentarios] #este comentarios es el de busquedas
        @registrosEncontrados=Registro.where(:comentarios => comentarios)
        render :busquedas
        #para buscar con sql where("comentario LIKE %?%",comentario);
      end
  
    
end
