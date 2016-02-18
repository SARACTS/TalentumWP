class Tiendas < ActiveRecord::Base
    validates_presence_of :nombre, message: '- El nombre no puede estar vacío.'
    validates_presence_of :artista, message: '- El artista no puede estar vacío.'
    validates_presence_of :year, message: '- El año no puede estar vacío.'


    validates_uniqueness_of :nombre, message: '- El nombre está repetido, debe ser único'
   
    validates_numericality_of :year, greater_than: 1000, message: 'La fecha debe superar los 1000 años'
   
end
