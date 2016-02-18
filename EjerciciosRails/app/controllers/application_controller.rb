class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
# aqui se incluyen aquellos metodos o codigo que queremos que se ejecuten siempre en cualquiera de nuestras paginas. Se conocn como filtros 