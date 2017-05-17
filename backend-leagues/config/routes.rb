Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :champions, only: [:create, :show]

  get '/getPlayerChampion/:name/:enemy_name', to: 'champions#getPlayerChampion'
  get '/getEnemyChampion/:name', to: 'champions#getEnemyChampion'
end
