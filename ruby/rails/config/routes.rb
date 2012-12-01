YoudaoBlog::Application.routes.draw do
  resources :menuitems
  resources :pages
  resources :lists

  root to: "main#index"
  match "/admin", to: "main#admin"
end