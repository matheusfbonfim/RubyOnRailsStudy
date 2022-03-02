class WelcomeController < ApplicationController
  layout 'adm'

  def index 
    # Variaveis - Cookies
    cookies[:curso] = "Curso de Ruby On Rails - Jackson Pires [COOKIE]"
    session[:curso] = "Curso de Ruby On Rails - Jackson Pires [SESSION]"

    # Variaveis de instancia/sessão
    @my_name = params[:nome]
    @curso = params[:curso]
    # Automaticamente renderiza a page index
  end
end
