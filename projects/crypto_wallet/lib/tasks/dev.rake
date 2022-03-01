namespace :dev do
  
  ###############################
  # TASK SETUP 
  desc "Configura o ambiente de desenvolvimento" # Descrição que aparece quando damos rails -T
  
  # Ação da task setup 
  task setup: :environment do
    if Rails.env.development?
      # Spinner - Focadas em icones no terminal

      show_spinner("Apagando BD...") do 
        # %x possibilita executar comandos no terminal, basta colocar os comandos como parametro
        %x(rails db:drop)
      end
      
      show_spinner("Criando BD ...") { %x(rails db:create) } 

      show_spinner("Migrando BD ...") { %x(rails db:migrate) } 

      %x(rails dev:add_coins) 
      %x(rails dev:add_mining_types) 

    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  ###############################
  # TASK CADASTRA MOEDAS 
  desc "Cadastra as moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando Moedas...") do
      # Arrays de Hashes
      coins = [
        {
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "https://logos-world.net/wp-content/uploads/2020/08/Bitcoin-Emblem.png"
        },
        {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://logosmarcas.net/wp-content/uploads/2020/12/Ethereum-Logo.png"
        },  
        {
          description: "Dash",
          acronym: "DASH",
          url_image: "https://cryptologos.cc/logos/dash-dash-logo.png"
        },
        {
          description: "Iota",
          acronym: "IOT",
          url_image: "https://upload.wikimedia.org/wikipedia/commons/a/ad/Iota_logo.png"
        },  
        {
          description: "ZCash",
          acronym: "ZEC",
          url_image: "https://z.cash/wp-content/uploads/2018/10/zcash-logo-fullcolor-512sq.png"
        },  
      ]  
    
      # Loop em coins
      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end  


  ###############################
  # TASK CADASTRO DOS TIPOS DE MINERAÇÃO 
  desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando os tipos de mineração") do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"},
      ]

      mining_types.each do |mining_type|
          MiningType.find_or_create_by!(mining_type)
      end 
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