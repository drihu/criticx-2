Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/companies', to: 'companies#index'
  get '/games', to: 'games#index'
end
