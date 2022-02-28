namespace :dev do
  #######################
  # Descrição que aparece quando damos rails -T
  desc "Configura o ambiente de desenvolvimento"
  
  #######################
  # Ação da task
  task setup: :environment do
    
    if Rails.env.development?
      # Spinner - Focadas em icones no terminal

      show_spinner("Apagando BD...") do 
        # %x possibilita executar comandos no terminal, basta colocar os comandos como parametro
        %x(rails db:drop)
      end
      
      show_spinner("Criando BD ...") { %x(rails db:create) } 

      show_spinner("Migrando BD ...") { %x(rails db:migrate) } 

      show_spinner("Populando BD ...") { %x(rails db:seed) } 

    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  # Uso exclusivo desse namespace
  private
    #######################
    # Metodo -> Refatoração
    def show_spinner(msg_start, msg_end= "Concluído com sucesso!")
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      spinner.auto_spin
      yield # Bloco de código que será passado na chamada de função
      spinner.success("(#{msg_end})")
    end

end