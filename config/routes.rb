Rails.application.routes.draw do
  devise_for :users
  get 'mains/index'
  get 'tops/index'
  root to: 'tops#index'

  resources :tops do
    resources :main, only: [:index]
  end
end
