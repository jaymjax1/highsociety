Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users, :groups
  get '/groups/mygroup/:id', to: 'groups#mygroup', as: 'mygroup'
  post '/groups/join_group/:id', to: 'groups#join_group', as: 'join'
end
  
