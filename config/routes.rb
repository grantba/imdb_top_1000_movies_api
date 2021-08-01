Rails.application.routes.draw do
  resources :reviews
  resources :watchlists
  resources :movies

  post '/search_by_name', to: 'movies#search_by_name'
  post '/search_by_id', to: 'movies#search_by_id'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
