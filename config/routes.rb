Descomplicando::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
  
  resources :contacts, :only => [:index]
  resources :profiles, :only => [:new, :create]
  resources :users, :except => [:index]

end
