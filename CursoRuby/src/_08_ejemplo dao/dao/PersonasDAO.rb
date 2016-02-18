class PersonasDAO
    # Almacen persistente
    @@almacenPersonas = []
    @@id=1
    
    def insert(persona)
      # Guardar persona en almacenPersonal
      persona.id = @@id
      @@id+=1
      @@almacenPersonas << persona # @@ variable de instancia variable de clase, un @ es cada uno de los new tiene su alamcen independiente 
      puts "Inserto persona"
    end
    
    def update(persona)
      #obtendo el id de la persona a actualizar
      idABuscar = persona.id
      #busco el id en el arrayPersona
      for personaActual in @@almacenPersonas
        if personaActual.id == idA_Buscar then  #caso 1 con el if
          @@almacenPersonas[i]=persona
          return true
        end
        i+=1
      end
      # @@almacenPersonas[idABuscar] = personas caso 2 no es el mas correcto pero funcionaria
      #: sustituyo la persona vieja por la nueva
      #puts "Actualizo/modifico persona"
      false
    end
    
    def delete(idPersona)
      for personaActual in @@almacenPersonas
        if personaActual.id == idPersona then  #caso 1 con el if
          @@almacenPersonas.delete personaActual
          return 
        end
      end
      # borro persona del array
      #puts "Borro persona"
    end
    
    def list
      #TODO: devuelvo el array
      @@almacenPersonas
       #puts "Listo persona"
    end
  
  
end