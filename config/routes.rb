Sabakan::Application.routes.draw do
  resources :host_groups
  resources :hosts
  resources :roles

  root :to => 'root#index'
end
