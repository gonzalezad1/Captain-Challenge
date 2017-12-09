Rails.application.routes.draw do
  resources :perso_weaps
  resources :battles
  resources :weapons
  resources :personnages
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "arene"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
