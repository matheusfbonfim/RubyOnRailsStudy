module ApplicationHelper
    # Helper para formatar a data de hoje para BR
    def data_br(data_us)
      data_us.strftime("%d/%m/%Y")
    end 

    # Helper para o nome da aplicação
    def nome_aplicacao
      "CRYPTO WALLET APPS"
    end 

    # Retorna ambiente atual do Rails
    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif
            "Produção"
        else
            "Teste"
        end
    end

    # Retorna conforme o locale o idioma
    def locale
        I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"
    end
end