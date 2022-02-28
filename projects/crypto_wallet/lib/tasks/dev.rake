namespace :dev do
  # Descrição que aparece quando damos rails -T
  desc "Configura o ambiente de desenvolvimento"
  
  # Ação da task
  task setup: :environment do
    # %x possibilita executar comandos no terminal, basta colocar os comandos como parametro
    puts %x(rails db:drop db:create db:migrate db:seed)
  end

end
