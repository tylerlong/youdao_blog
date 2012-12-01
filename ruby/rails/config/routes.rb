YoudaoBlog::Application.routes.draw do
  resources :menuitems
  resources :pages do
    member do
      get "refresh"
    end
  end
  resources :lists do
    member do
      get "refresh"
    end
  end

  root to: "lists#index"

  match "/admin", to: "main#admin"

  match "/:permalink", to: "pages#show", constraints: { permalink: /\d+/ }

  match "/:permalink", to: "lists#show"
end