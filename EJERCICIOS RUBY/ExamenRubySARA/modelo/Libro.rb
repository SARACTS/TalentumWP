class Libro
  attr_accessor :id, :titulo, :autor, :descripcion
  
  def initialize (titulo, autor, descripcion, id=nil)
    @titulo = titulo
    @autor = autor
    @descripcion = descripcion
    @id = nil
  end
  
  def to_s
    "#{@id} #{@titulo} #{@autor} #{@descripcion}"
  end
  
end