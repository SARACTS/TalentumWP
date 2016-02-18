class GestionPersonasLN #LN = Lógica de Negocio
  
    def initialize (dao,log)
        @personasDao = dao #PersonasBBDDDAO.new mal error tipico
        @personasLog = log #LogDAO.new mal
    end
     
    def guardarPersona(persona)
        @personasDao.insert persona
        @personasLog.generarLog "Persona #{persona} insertada"
    end
    
    def buscarPersona(idPersona)
      listaDePersonas = @personasDao.list
       #TODO: Recorro el array buscando el idPersona
       for persona in listaDePersonas
         if persona.id == idPersona
           return persona
           
         end
       end
    end
    
    def borrarPersonas(arrayIdPersonas)
        #TODO : recorro el array de personas 
          #TODO: en cada iteraccion @@personasDao.delete id
    end
    
    def actualizarPersona(persona)
        @personasDao.update persona
    end   

end

