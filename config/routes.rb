Sabakan::Application.routes.draw do
  resources :host_groups
  resources :hosts

  root :to => 'root#index'
end
