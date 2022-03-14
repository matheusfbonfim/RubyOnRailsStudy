Rails.application.routes.draw do
  # Recursos 
  resources :coins # -> Gera 7 rotas de forma automática (GET, POST, ....)
  # get('/coins', to:'coins#index')

  resources :mining_types
  
  # Indica o metodo GET -> Primeiro o controller e depois a action
  get 'welcome/index'# , to: 'welcome#index' # -> Infere que atraves do path quem é o parametro e a action
  # get('/inicio', to: 'welcome#index')


  # Página padrão vai para welcome 
  root to: 'welcome#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end