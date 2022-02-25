Rails.application.routes.draw do
  # Indica o metodo GET -> Primeiro o controller e depois a action
  get('welcome/index')

  # Recursos 
  resources :coins

  # Página padrão vai para welcome 
  root to: 'welcome#index'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
