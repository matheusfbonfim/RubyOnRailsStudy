class WelcomeController < ApplicationController
  def index
    @my_name = params[:nome]
    @curso = params[:curso]
    # Automaticamente renderiza a page index
  end
end
