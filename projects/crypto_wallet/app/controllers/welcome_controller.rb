class WelcomeController < ApplicationController
  def index
    @nome = "Jackson"
    @curso = "Rails"
    # Automaticamente renderiza a page index
  end
end
