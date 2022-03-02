class ApplicationController < ActionController::Base
   # Antes de qualquer coisa, será rodado essa action
   before_action :set_locale

   # Setando o idioma -> Antes de qualquer ação
   def set_locale
       # Verifica se existe algum parametro chamado locale na url
       # params[:locale] -> Parametro enviado pela url
       if params[:locale]
           cookies[:locale] = params[:locale]    # Armazena no Cookies
       end
       
       # Verifica se existe algum cookie com a chave locale
       if cookies[:locale]
         # Compara o idioma da aplicação com o armazenado no cookie
         if I18n.locale != cookies[:locale]
           I18n.locale = cookies[:locale]
         end
       end
   end
end
