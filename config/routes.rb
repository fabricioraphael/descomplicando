Descomplicando::Application.routes.draw do
  root :to => 'home#index'
  
  resources :contacts, :only => [:index]
end
