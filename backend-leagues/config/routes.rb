Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :champions, only: [:create, :show]

  get '/findChampion/:name', to: 'champions#create'
end
