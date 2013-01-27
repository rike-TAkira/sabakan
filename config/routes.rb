Sabakan::Application.routes.draw do
  resources :hosts

  root :to => 'root#index'
end
