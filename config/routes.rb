Rails.application.routes.draw do
  get 'activities/index'
  get 'activities/new'
  root to: 'users#index'
  devise_for :users
  resources :groups, only: [:new, :index, :create]
  resources :activities, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'activities/group_id=:group_id', to: 'activities#index', as: "activities_home"
end
