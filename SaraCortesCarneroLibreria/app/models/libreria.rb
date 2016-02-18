class Libreria < ActiveRecord::Base
  
  
  
    validates_uniqueness_of :titulo, message: '-El título que ha introducido está repetido'
    validates_presence_of :titulo, message: '- El título no puede estar vacío.'
    validates_presence_of :autor, message: '- El autor no puede estar vacío.'
    

   
   
   
end
